package com.yftech.yfhome.presenter;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.util.Log;
import com.yftech.vehicle.internal.adapter.IAirCondition;
import com.yftech.vehicle.internal.adapter.ICarConfig;
import com.yftech.vehicle.internal.adapter.ICarDoor;
import com.yftech.vehicle.internal.adapter.ICarDrive;
import com.yftech.vehicle.internal.adapter.ICarInfo;
import com.yftech.vehicle.internal.adapter.ICarPower;
import com.yftech.vehicle.sdk.AirConditionManager;
import com.yftech.vehicle.sdk.CarConfig;
import com.yftech.vehicle.sdk.CarDoorManager;
import com.yftech.vehicle.sdk.CarDriveManager;
import com.yftech.vehicle.sdk.CarInfoManager;
import com.yftech.vehicle.sdk.CarPowerManager;
import com.yftech.yfhome.R;
import com.yftech.yfhome.utils.Utils;

/* JADX INFO: loaded from: classes.dex */
public class CarPresenter {
    public static final int AC_MODE_FAST_COOL = 0;
    public static final int AC_MODE_FAST_WARM = 1;
    public static final int AC_MODE_NULL = -1;
    public static final int AIR_CONDITION_OFF = 1;
    public static final int AIR_CONDITION_ON = 0;
    public static final int AIR_CONDITION_USELESS = 2;
    public static final int CAR_BODY_DIRECTION_LEFT = 0;
    public static final int CAR_BODY_DIRECTION_RIGHT = 1;
    public static final int DRIVING_MODE_COMFORT = 1;
    public static final int DRIVING_MODE_ECO = 0;
    public static final int DRIVING_MODE_MUD = 5;
    public static final int DRIVING_MODE_SAND = 4;
    public static final int DRIVING_MODE_SNOW = 3;
    public static final int DRIVING_MODE_SPORT = 2;
    private static final int MSG_CHECK_AC_MODE = 11;
    private static final int MSG_RESET_AC_AUTO_DISLOG_SHOW_FLAG = 12;
    private static final String TAG = "CarPresenter";
    private static boolean mACModeSetting = false;
    private static int mCurrentIndex;
    private static volatile CarPresenter mInstance;
    private static boolean mIsFrontLeftDoorOpen;
    private static boolean mIsFrontRightDoorOpen;
    private static boolean mIsHoodOpen;
    private static boolean mIsRearLeftDoorOpen;
    private static boolean mIsRearRightDoorOpen;
    private static boolean mIsTrunkOpen;
    private boolean isAirSingleZone;
    private boolean isAutoAir;
    private boolean isGacLogoPresent;
    private boolean isPlgmfunccfgPresent;
    private boolean isRightHandDriveVehicle;
    private IAirCondition.AutoMode mAutoMode;
    private CarDoorManager mCarDoorManager;
    private CarDriveManager mCarDriveManager;
    private CarPowerManager mCarPowerManager;
    private Context mContext;
    private ICarDrive.DriveMode mDrivingMode;
    private ICarInfo.GearPosition mGear;
    private boolean mIsAnionEnable;
    private boolean mIsRearDefogEnable;
    private OnChangedCarListener mOnChangedCarListener;
    private ICarPower.PowerMode mPowerMode;
    private int mACMode = -1;
    private final int[] CAR_BODY_PICTURE_RESID = {R.mipmap.home_360_00342, R.mipmap.home_360_00341, R.mipmap.home_360_00340, R.mipmap.home_360_00339, R.mipmap.home_360_00338, R.mipmap.home_360_00337, R.mipmap.home_360_00336, R.mipmap.home_360_00335, R.mipmap.home_360_00334, R.mipmap.home_360_00333, R.mipmap.home_360_00332, R.mipmap.home_360_00331, R.mipmap.home_360_00330, R.mipmap.home_360_00327, R.mipmap.home_360_00328, R.mipmap.home_360_00327, R.mipmap.home_360_00326, R.mipmap.home_360_00325, R.mipmap.home_360_00324, R.mipmap.home_360_00323, R.mipmap.home_360_00322, R.mipmap.home_360_00321, R.mipmap.home_360_00320, R.mipmap.home_360_00319, R.mipmap.home_360_00318, R.mipmap.home_360_00317, R.mipmap.home_360_00316, R.mipmap.home_360_00315, R.mipmap.home_360_00314, R.mipmap.home_360_00313, R.mipmap.home_360_00312, R.mipmap.home_360_00311, R.mipmap.home_360_00310, R.mipmap.home_360_00309, R.mipmap.home_360_00308, R.mipmap.home_360_00307, R.mipmap.home_360_00306, R.mipmap.home_360_00305, R.mipmap.home_360_00304, R.mipmap.home_360_00303, R.mipmap.home_360_00302, R.mipmap.home_360_00301, R.mipmap.home_360_00300, R.mipmap.home_360_00299, R.mipmap.home_360_00298, R.mipmap.home_360_00297, R.mipmap.home_360_00296, R.mipmap.home_360_00295, R.mipmap.home_360_00294, R.mipmap.home_360_00293, R.mipmap.home_360_00292, R.mipmap.home_360_00291, R.mipmap.home_360_00290, R.mipmap.home_360_00289, R.mipmap.home_360_00288, R.mipmap.home_360_00287, R.mipmap.home_360_00286, R.mipmap.home_360_00285, R.mipmap.home_360_00284, R.mipmap.home_360_00283, R.mipmap.home_360_00282, R.mipmap.home_360_00281, R.mipmap.home_360_00280, R.mipmap.home_360_00279, R.mipmap.home_360_00278, R.mipmap.home_360_00277, R.mipmap.home_360_00276, R.mipmap.home_360_00275, R.mipmap.home_360_00274, R.mipmap.home_360_00273, R.mipmap.home_360_00272, R.mipmap.home_360_00271, R.mipmap.home_360_00270, R.mipmap.home_360_00269, R.mipmap.home_360_00268, R.mipmap.home_360_00267, R.mipmap.home_360_00266, R.mipmap.home_360_00265, R.mipmap.home_360_00264, R.mipmap.home_360_00263, R.mipmap.home_360_00262, R.mipmap.home_360_00261, R.mipmap.home_360_00260, R.mipmap.home_360_00259, R.mipmap.home_360_00258, R.mipmap.home_360_00257, R.mipmap.home_360_00256, R.mipmap.home_360_00255, R.mipmap.home_360_00254, R.mipmap.home_360_00253, R.mipmap.home_360_00252, R.mipmap.home_360_00251, R.mipmap.home_360_00250, R.mipmap.home_360_00249, R.mipmap.home_360_00248, R.mipmap.home_360_00247, R.mipmap.home_360_00246, R.mipmap.home_360_00245, R.mipmap.home_360_00244, R.mipmap.home_360_00243, R.mipmap.home_360_00242, R.mipmap.home_360_00241, R.mipmap.home_360_00240, R.mipmap.home_360_00239, R.mipmap.home_360_00238, R.mipmap.home_360_00237, R.mipmap.home_360_00236, R.mipmap.home_360_00235, R.mipmap.home_360_00234, R.mipmap.home_360_00233, R.mipmap.home_360_00232, R.mipmap.home_360_00231, R.mipmap.home_360_00230, R.mipmap.home_360_00229, R.mipmap.home_360_00228, R.mipmap.home_360_00227, R.mipmap.home_360_00226, R.mipmap.home_360_00225, R.mipmap.home_360_00224, R.mipmap.home_360_00223, R.mipmap.home_360_00222, R.mipmap.home_360_00221, R.mipmap.home_360_00220, R.mipmap.home_360_00219, R.mipmap.home_360_00218, R.mipmap.home_360_00217, R.mipmap.home_360_00216, R.mipmap.home_360_00215, R.mipmap.home_360_00214, R.mipmap.home_360_00213, R.mipmap.home_360_00212, R.mipmap.home_360_00211, R.mipmap.home_360_00210, R.mipmap.home_360_00209, R.mipmap.home_360_00208, R.mipmap.home_360_00207, R.mipmap.home_360_00206, R.mipmap.home_360_00205, R.mipmap.home_360_00204, R.mipmap.home_360_00203, R.mipmap.home_360_00202, R.mipmap.home_360_00201, R.mipmap.home_360_00200, R.mipmap.home_360_00199, R.mipmap.home_360_00198, R.mipmap.home_360_00197, R.mipmap.home_360_00196, R.mipmap.home_360_00195, R.mipmap.home_360_00194, R.mipmap.home_360_00193, R.mipmap.home_360_00192, R.mipmap.home_360_00191, R.mipmap.home_360_00190, R.mipmap.home_360_00189, R.mipmap.home_360_00188, R.mipmap.home_360_00187, R.mipmap.home_360_00186, R.mipmap.home_360_00185, R.mipmap.home_360_00184, R.mipmap.home_360_00183, R.mipmap.home_360_00182, R.mipmap.home_360_00181, R.mipmap.home_360_00180, R.mipmap.home_360_00179, R.mipmap.home_360_00178, R.mipmap.home_360_00177, R.mipmap.home_360_00176, R.mipmap.home_360_00175, R.mipmap.home_360_00174, R.mipmap.home_360_00173, R.mipmap.home_360_00172, R.mipmap.home_360_00171, R.mipmap.home_360_00170, R.mipmap.home_360_00169, R.mipmap.home_360_00168, R.mipmap.home_360_00167, R.mipmap.home_360_00166, R.mipmap.home_360_00165, R.mipmap.home_360_00164, R.mipmap.home_360_00163, R.mipmap.home_360_00162, R.mipmap.home_360_00161, R.mipmap.home_360_00160, R.mipmap.home_360_00159, R.mipmap.home_360_00158, R.mipmap.home_360_00157, R.mipmap.home_360_00156, R.mipmap.home_360_00155, R.mipmap.home_360_00154, R.mipmap.home_360_00153, R.mipmap.home_360_00152, R.mipmap.home_360_00151, R.mipmap.home_360_00150, R.mipmap.home_360_00149, R.mipmap.home_360_00148, R.mipmap.home_360_00147, R.mipmap.home_360_00146, R.mipmap.home_360_00145, R.mipmap.home_360_00144, R.mipmap.home_360_00143, R.mipmap.home_360_00142, R.mipmap.home_360_00141, R.mipmap.home_360_00140, R.mipmap.home_360_00139, R.mipmap.home_360_00138, R.mipmap.home_360_00137, R.mipmap.home_360_00136, R.mipmap.home_360_00135, R.mipmap.home_360_00134, R.mipmap.home_360_00133, R.mipmap.home_360_00132, R.mipmap.home_360_00131, R.mipmap.home_360_00130, R.mipmap.home_360_00129, R.mipmap.home_360_00128, R.mipmap.home_360_00127, R.mipmap.home_360_00126, R.mipmap.home_360_00125, R.mipmap.home_360_00124, R.mipmap.home_360_00123, R.mipmap.home_360_00122, R.mipmap.home_360_00121, R.mipmap.home_360_00120, R.mipmap.home_360_00119, R.mipmap.home_360_00118, R.mipmap.home_360_00117, R.mipmap.home_360_00116, R.mipmap.home_360_00115, R.mipmap.home_360_00114, R.mipmap.home_360_00113, R.mipmap.home_360_00112, R.mipmap.home_360_00111, R.mipmap.home_360_00110, R.mipmap.home_360_00109, R.mipmap.home_360_00108, R.mipmap.home_360_00107, R.mipmap.home_360_00106, R.mipmap.home_360_00105, R.mipmap.home_360_00104, R.mipmap.home_360_00103, R.mipmap.home_360_00102, R.mipmap.home_360_00101, R.mipmap.home_360_00100, R.mipmap.home_360_00099, R.mipmap.home_360_00098, R.mipmap.home_360_00097, R.mipmap.home_360_00096, R.mipmap.home_360_00095, R.mipmap.home_360_00094, R.mipmap.home_360_00093, R.mipmap.home_360_00092, R.mipmap.home_360_00091, R.mipmap.home_360_00090, R.mipmap.home_360_00089, R.mipmap.home_360_00088, R.mipmap.home_360_00087, R.mipmap.home_360_00086, R.mipmap.home_360_00085, R.mipmap.home_360_00084, R.mipmap.home_360_00083, R.mipmap.home_360_00082, R.mipmap.home_360_00081, R.mipmap.home_360_00080, R.mipmap.home_360_00079, R.mipmap.home_360_00078, R.mipmap.home_360_00077, R.mipmap.home_360_00076, R.mipmap.home_360_00075, R.mipmap.home_360_00074, R.mipmap.home_360_00073, R.mipmap.home_360_00072, R.mipmap.home_360_00071, R.mipmap.home_360_00070, R.mipmap.home_360_00069, R.mipmap.home_360_00068, R.mipmap.home_360_00067, R.mipmap.home_360_00066, R.mipmap.home_360_00065, R.mipmap.home_360_00064, R.mipmap.home_360_00063, R.mipmap.home_360_00062, R.mipmap.home_360_00061, R.mipmap.home_360_00060, R.mipmap.home_360_00059, R.mipmap.home_360_00058, R.mipmap.home_360_00057, R.mipmap.home_360_00056, R.mipmap.home_360_00055, R.mipmap.home_360_00054, R.mipmap.home_360_00053, R.mipmap.home_360_00052, R.mipmap.home_360_00051, R.mipmap.home_360_00050, R.mipmap.home_360_00049, R.mipmap.home_360_00048, R.mipmap.home_360_00047, R.mipmap.home_360_00046, R.mipmap.home_360_00045, R.mipmap.home_360_00044, R.mipmap.home_360_00043, R.mipmap.home_360_00042, R.mipmap.home_360_00041, R.mipmap.home_360_00040, R.mipmap.home_360_00039, R.mipmap.home_360_00038, R.mipmap.home_360_00037, R.mipmap.home_360_00036, R.mipmap.home_360_00035, R.mipmap.home_360_00034, R.mipmap.home_360_00033, R.mipmap.home_360_00032, R.mipmap.home_360_00031, R.mipmap.home_360_00030, R.mipmap.home_360_00029, R.mipmap.home_360_00028, R.mipmap.home_360_00027, R.mipmap.home_360_00026, R.mipmap.home_360_00025, R.mipmap.home_360_00024, R.mipmap.home_360_00023, R.mipmap.home_360_00022, R.mipmap.home_360_00021, R.mipmap.home_360_00020, R.mipmap.home_360_00019, R.mipmap.home_360_00018, R.mipmap.home_360_00017, R.mipmap.home_360_00016, R.mipmap.home_360_00015, R.mipmap.home_360_00014, R.mipmap.home_360_00013, R.mipmap.home_360_00012, R.mipmap.home_360_00011, R.mipmap.home_360_00010, R.mipmap.home_360_00009, R.mipmap.home_360_00008, R.mipmap.home_360_00007, R.mipmap.home_360_00006, R.mipmap.home_360_00005, R.mipmap.home_360_00004, R.mipmap.home_360_00003, R.mipmap.home_360_00002, R.mipmap.home_360_00001, R.mipmap.home_360_00000, R.mipmap.home_360_00360, R.mipmap.home_360_00359, R.mipmap.home_360_00358, R.mipmap.home_360_00357, R.mipmap.home_360_00356, R.mipmap.home_360_00355, R.mipmap.home_360_00354, R.mipmap.home_360_00353, R.mipmap.home_360_00352, R.mipmap.home_360_00351, R.mipmap.home_360_00350, R.mipmap.home_360_00349, R.mipmap.home_360_00348, R.mipmap.home_360_00347, R.mipmap.home_360_00346, R.mipmap.home_360_00345, R.mipmap.home_360_00344, R.mipmap.home_360_00343};
    private final int RC_DRIVE_MODE = 10;
    private final int DELAY_TIME = 500;
    private Handler mHandler = new Handler(Looper.getMainLooper()) { // from class: com.yftech.yfhome.presenter.CarPresenter.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what == 10) {
                int i = message.arg1;
                Log.d(CarPresenter.TAG, "RC_DRIVE_MODE->toChange=" + i + ", now=" + CarPresenter.this.mDrivingMode.ordinal());
                if (CarPresenter.this.mDrivingMode.ordinal() != i) {
                    Utils.setAvdcDialogShowFlag(CarPresenter.this.mContext, 0);
                    if (CarPresenter.this.mOnChangedCarListener != null) {
                        CarPresenter.this.mOnChangedCarListener.onChangedDrivingMode(CarPresenter.this.mDrivingMode);
                        return;
                    }
                    return;
                }
                return;
            }
            if (message.what != 11) {
                if (message.what == 12) {
                    Utils.setAcAutoDialogShowFlag(CarPresenter.this.mContext, 0);
                    return;
                }
                return;
            }
            boolean unused = CarPresenter.mACModeSetting = false;
            IAirCondition.AutoMode autoMode = CarPresenter.this.mAirConditionManager.getAutoMode();
            float driverTemperature = CarPresenter.this.mAirConditionManager.getDriverTemperature();
            float passengerTemperature = CarPresenter.this.mAirConditionManager.getPassengerTemperature();
            IAirCondition.WindMode windMode = CarPresenter.this.mAirConditionManager.getWindMode();
            boolean zIsACEnabled = CarPresenter.this.mAirConditionManager.isACEnabled();
            IAirCondition.AirCirculationState airCirculationState = CarPresenter.this.mAirConditionManager.getAirCirculationState();
            boolean zIsDualSyncEnabled = CarPresenter.this.mAirConditionManager.isDualSyncEnabled();
            Log.i(CarPresenter.TAG, "handleMessage: isAutoAir = " + CarPresenter.this.isAutoAir + ",  isAirSingleZone =  " + CarPresenter.this.isAirSingleZone + ",  mACMode = " + CarPresenter.this.mACMode + "\n autoMode = " + autoMode + " ,  DriverTemperature = " + driverTemperature + ",  passengerTemperature = " + passengerTemperature + "\n windMode = " + windMode + ",  acEnable = " + zIsACEnabled + ",   circulationState = " + airCirculationState + ",  syncEnabled = " + zIsDualSyncEnabled);
            if (CarPresenter.this.mACMode == 0) {
                if (CarPresenter.this.isAutoAir) {
                    if ((autoMode == IAirCondition.AutoMode.AUTO_MODE && driverTemperature == 18.0f && (CarPresenter.this.isAirSingleZone || passengerTemperature == 18.0f)) || CarPresenter.this.mOnChangedCarListener == null) {
                        return;
                    }
                    CarPresenter.this.mOnChangedCarListener.onChangedACMode(-1);
                    return;
                }
                if ((driverTemperature == 18.0f && ((CarPresenter.this.isAirSingleZone || passengerTemperature == 18.0f) && windMode == IAirCondition.WindMode.FACE && zIsACEnabled && airCirculationState == IAirCondition.AirCirculationState.INNER_AIR_CIRCULATION && (CarPresenter.this.isAirSingleZone || zIsDualSyncEnabled))) || CarPresenter.this.mOnChangedCarListener == null) {
                    return;
                }
                CarPresenter.this.mOnChangedCarListener.onChangedACMode(-1);
                return;
            }
            if (CarPresenter.this.mACMode == 1) {
                if (CarPresenter.this.isAutoAir) {
                    if ((autoMode == IAirCondition.AutoMode.AUTO_MODE && driverTemperature == 28.0f && (CarPresenter.this.isAirSingleZone || passengerTemperature == 28.0f)) || CarPresenter.this.mOnChangedCarListener == null) {
                        return;
                    }
                    CarPresenter.this.mOnChangedCarListener.onChangedACMode(-1);
                    return;
                }
                if ((driverTemperature == 28.0f && ((CarPresenter.this.isAirSingleZone || passengerTemperature == 28.0f) && windMode == IAirCondition.WindMode.FOOT && !zIsACEnabled && airCirculationState == IAirCondition.AirCirculationState.OUTSIDE_AIR_CIRCULATION && (CarPresenter.this.isAirSingleZone || zIsDualSyncEnabled))) || CarPresenter.this.mOnChangedCarListener == null) {
                    return;
                }
                CarPresenter.this.mOnChangedCarListener.onChangedACMode(-1);
            }
        }
    };
    private CarDoorManager.CarDoorListener mCarDoorListener = new AnonymousClass9();
    private AirConditionManager.AirConditionListener mAirConditionCallback = new AirConditionManager.AirConditionListener() { // from class: com.yftech.yfhome.presenter.CarPresenter.10
        public void onACStateChanged(boolean z) {
            int aCMode = CarPresenter.this.getACMode();
            Log.i(CarPresenter.TAG, "onACStateChanged isEnabled:" + z + ", isAutoAir = " + CarPresenter.this.isAutoAir + "  fastMode（COOL=0、WARM=1）= " + aCMode);
            boolean z2 = (1 == aCMode && z) ? true : aCMode == 0 && !z;
            if (CarPresenter.mACModeSetting || !z2 || CarPresenter.this.mOnChangedCarListener == null) {
                return;
            }
            CarPresenter.this.mOnChangedCarListener.onChangedACMode(-1);
        }

        public void onAirCirculationStateChanged(IAirCondition.AirCirculationState airCirculationState) {
            int aCMode = CarPresenter.this.getACMode();
            Log.i(CarPresenter.TAG, "onAirCirculationStateChanged state:" + airCirculationState + ", isAutoAir = " + CarPresenter.this.isAutoAir + "  fastMode（COOL=0、WARM=1）= " + aCMode);
            boolean z = (1 != aCMode || IAirCondition.AirCirculationState.OUTSIDE_AIR_CIRCULATION == airCirculationState) ? aCMode == 0 && IAirCondition.AirCirculationState.INNER_AIR_CIRCULATION != airCirculationState : true;
            if (CarPresenter.mACModeSetting || !z || CarPresenter.this.mOnChangedCarListener == null || CarPresenter.this.isAutoAir) {
                return;
            }
            CarPresenter.this.mOnChangedCarListener.onChangedACMode(-1);
        }

        public void onAutoModeChanged(IAirCondition.AutoMode autoMode) {
            Log.i(CarPresenter.TAG, "onAutoModeChanged mode:" + autoMode + ", isAutoAir = " + CarPresenter.this.isAutoAir);
            if (CarPresenter.this.mHandler.hasMessages(12)) {
                CarPresenter.this.mHandler.removeMessages(12);
            }
            boolean z = autoMode != IAirCondition.AutoMode.AUTO_MODE;
            if (!CarPresenter.mACModeSetting && z && CarPresenter.this.mOnChangedCarListener != null && CarPresenter.this.isAutoAir) {
                CarPresenter.this.mOnChangedCarListener.onChangedACMode(-1);
            }
            CarPresenter.this.mAutoMode = autoMode;
        }

        public void onDriverTemperatureChanged(float f) {
            int aCMode = CarPresenter.this.getACMode();
            Log.i(CarPresenter.TAG, "onDriverTemperatureChanged temp:" + f + "  fastMode（COOL=0、WARM=1）= " + aCMode);
            boolean z = (1 != aCMode || 28.0f == f) ? aCMode == 0 && 18.0f != f : true;
            if (CarPresenter.mACModeSetting || !z || CarPresenter.this.mOnChangedCarListener == null) {
                return;
            }
            CarPresenter.this.mOnChangedCarListener.onChangedACMode(-1);
        }

        public void onIonStateChanged(boolean z) {
            Log.i(CarPresenter.TAG, "onIonStateChanged isEnabled:" + z);
            if (z != CarPresenter.this.mIsAnionEnable) {
                OnChangedCarListener unused = CarPresenter.this.mOnChangedCarListener;
            }
            CarPresenter.this.mIsAnionEnable = z;
        }

        public void onPassengerTemperatureChanged(float f) {
            int aCMode = CarPresenter.this.getACMode();
            Log.i(CarPresenter.TAG, "onPassengerTemperatureChanged temp:" + f + ", isAirSingleZone = " + CarPresenter.this.isAirSingleZone + ",  fastMode（COOL=0、WARM=1）= " + aCMode);
            boolean z = (1 != aCMode || 28.0f == f) ? aCMode == 0 && 18.0f != f : true;
            if (CarPresenter.mACModeSetting || !z || CarPresenter.this.mOnChangedCarListener == null || CarPresenter.this.isAirSingleZone) {
                return;
            }
            CarPresenter.this.mOnChangedCarListener.onChangedACMode(-1);
        }

        public void onRearDefrostStateChanged(boolean z) {
            Log.i(CarPresenter.TAG, "onRearDefrostStateChanged isEnabled:" + z);
            if (z != CarPresenter.this.mIsRearDefogEnable) {
                OnChangedCarListener unused = CarPresenter.this.mOnChangedCarListener;
            }
            CarPresenter.this.mIsRearDefogEnable = z;
        }

        public void onWindSpeedChanged(IAirCondition.WindSpeed windSpeed) {
            Log.i(CarPresenter.TAG, "onWindSpeedChanged speed:" + windSpeed + "  isAutoAir = " + CarPresenter.this.isAutoAir);
            boolean z = IAirCondition.WindSpeed.LEVEL_5 != windSpeed;
            if (CarPresenter.mACModeSetting || !z || CarPresenter.this.mOnChangedCarListener == null || CarPresenter.this.isAutoAir) {
                return;
            }
            CarPresenter.this.mOnChangedCarListener.onChangedACMode(-1);
        }
    };
    private CarDriveManager.CarDriveListener mCarDriveListener = new CarDriveManager.CarDriveListener() { // from class: com.yftech.yfhome.presenter.CarPresenter.11
        public void onDriveModeChanged(ICarDrive.DriveMode driveMode) {
            Log.i(CarPresenter.TAG, "onDriveModeChanged mode:" + driveMode + "originalMode=" + CarPresenter.this.mDrivingMode);
            CarPresenter.this.mDrivingMode = driveMode;
            if (CarPresenter.this.mOnChangedCarListener != null) {
                CarPresenter.this.mOnChangedCarListener.onChangedDrivingMode(driveMode);
            }
        }
    };
    private CarInfoManager.CarInfoListener mCarInfoListener = new CarInfoManager.CarInfoListener() { // from class: com.yftech.yfhome.presenter.CarPresenter.12
        public void onGearPositionChanged(ICarInfo.GearPosition gearPosition) {
            CarPresenter.this.mGear = gearPosition;
            Log.i(CarPresenter.TAG, "onGearPositionChanged: v = " + CarPresenter.this.mGear);
            if (CarPresenter.this.mOnChangedCarListener != null) {
                CarPresenter.this.mOnChangedCarListener.onGearPositionChanged(CarPresenter.this.mGear);
            }
        }
    };
    private CarPowerManager.CarPowerListener mCarPowerListener = new CarPowerManager.CarPowerListener() { // from class: com.yftech.yfhome.presenter.CarPresenter.13
        public void onPowerModeChanged(ICarPower.PowerMode powerMode) {
            Log.i(CarPresenter.TAG, "onPowerModeChanged:" + powerMode.toString());
            CarPresenter.this.mPowerMode = powerMode;
            if (CarPresenter.this.mOnChangedCarListener != null) {
                CarPresenter.this.mOnChangedCarListener.onChangedPowerMode(powerMode);
            }
        }

        public void onPowerStateChanged(ICarPower.PowerState powerState) {
            Log.i(CarPresenter.TAG, "onPowerStateChanged:" + powerState.toString());
        }
    };
    private ICarConfig.VehiclePlatform mVehiclePlatform = CarConfig.getVehiclePlatform();
    private AirConditionManager mAirConditionManager = AirConditionManager.get();

    /* JADX INFO: renamed from: com.yftech.yfhome.presenter.CarPresenter$14, reason: invalid class name */
    static /* synthetic */ class AnonymousClass14 {
        static final /* synthetic */ int[] $SwitchMap$com$yftech$vehicle$internal$adapter$IAirCondition$WindSpeed = new int[IAirCondition.WindSpeed.values().length];

        static {
            try {
                $SwitchMap$com$yftech$vehicle$internal$adapter$IAirCondition$WindSpeed[IAirCondition.WindSpeed.LEVEL_1.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$yftech$vehicle$internal$adapter$IAirCondition$WindSpeed[IAirCondition.WindSpeed.LEVEL_2.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$yftech$vehicle$internal$adapter$IAirCondition$WindSpeed[IAirCondition.WindSpeed.LEVEL_3.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$yftech$vehicle$internal$adapter$IAirCondition$WindSpeed[IAirCondition.WindSpeed.LEVEL_4.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$yftech$vehicle$internal$adapter$IAirCondition$WindSpeed[IAirCondition.WindSpeed.LEVEL_5.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$yftech$vehicle$internal$adapter$IAirCondition$WindSpeed[IAirCondition.WindSpeed.LEVEL_6.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$yftech$vehicle$internal$adapter$IAirCondition$WindSpeed[IAirCondition.WindSpeed.LEVEL_7.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$yftech$vehicle$internal$adapter$IAirCondition$WindSpeed[IAirCondition.WindSpeed.OFF.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* JADX INFO: renamed from: com.yftech.yfhome.presenter.CarPresenter$9, reason: invalid class name */
    class AnonymousClass9 extends CarDoorManager.CarDoorListener {
        AnonymousClass9() {
        }

        public static /* synthetic */ void lambda$onTailDoorStateChanged$0(AnonymousClass9 anonymousClass9) {
            CarPresenter.this.resetCarBodyPicture();
            CarPresenter.this.mOnChangedCarListener.onChangedTrunk(CarPresenter.mIsTrunkOpen);
        }

        public void onDriverDoorStateChanged(ICarDoor.DoorState doorState) {
            Log.i(CarPresenter.TAG, "onDriverDoorStateChanged: " + doorState + ", isRightHandDriveVehicle = " + CarPresenter.this.isRightHandDriveVehicle);
            boolean z = ICarDoor.DoorState.OPEN == doorState;
            if (CarPresenter.this.isRightHandDriveVehicle) {
                CarPresenter.this.updateFrontRightDoorState(z);
            } else {
                CarPresenter.this.updateFrontLeftOoorState(z);
            }
        }

        public void onHoodDoorStateChanged(ICarDoor.DoorState doorState) {
            Log.i(CarPresenter.TAG, "onHoodDoorStateChanged: " + doorState);
            boolean z = ICarDoor.DoorState.OPEN == doorState;
            if (CarPresenter.mIsHoodOpen != z) {
                boolean unused = CarPresenter.mIsHoodOpen = z;
                if (CarPresenter.this.mOnChangedCarListener != null) {
                    CarPresenter.this.mHandler.post(new Runnable() { // from class: com.yftech.yfhome.presenter.CarPresenter.9.3
                        @Override // java.lang.Runnable
                        public void run() {
                            CarPresenter.this.resetCarBodyPicture();
                            CarPresenter.this.mOnChangedCarListener.onChangedHood(CarPresenter.mIsHoodOpen);
                        }
                    });
                }
            }
        }

        public void onPassengerDoorStateChanged(ICarDoor.DoorState doorState) {
            Log.i(CarPresenter.TAG, "onPassengerDoorStateChanged: " + doorState + ", isRightHandDriveVehicle = " + CarPresenter.this.isRightHandDriveVehicle);
            boolean z = ICarDoor.DoorState.OPEN == doorState;
            if (CarPresenter.this.isRightHandDriveVehicle) {
                CarPresenter.this.updateFrontLeftOoorState(z);
            } else {
                CarPresenter.this.updateFrontRightDoorState(z);
            }
        }

        public void onRearLeftDoorStateChanged(ICarDoor.DoorState doorState) {
            Log.i(CarPresenter.TAG, "onRearLeftDoorStateChanged: " + doorState);
            boolean z = ICarDoor.DoorState.OPEN == doorState;
            if (CarPresenter.mIsRearLeftDoorOpen != z) {
                boolean unused = CarPresenter.mIsRearLeftDoorOpen = z;
                if (CarPresenter.this.mOnChangedCarListener != null) {
                    CarPresenter.this.mHandler.post(new Runnable() { // from class: com.yftech.yfhome.presenter.CarPresenter.9.1
                        @Override // java.lang.Runnable
                        public void run() {
                            CarPresenter.this.resetCarBodyPicture();
                            CarPresenter.this.mOnChangedCarListener.onChangedRearLeftDoor(CarPresenter.mIsRearLeftDoorOpen);
                        }
                    });
                }
            }
        }

        public void onRearRightDoorStateChanged(ICarDoor.DoorState doorState) {
            Log.i(CarPresenter.TAG, "onRearRightDoorStateChanged: " + doorState);
            boolean z = ICarDoor.DoorState.OPEN == doorState;
            if (CarPresenter.mIsRearRightDoorOpen != z) {
                boolean unused = CarPresenter.mIsRearRightDoorOpen = z;
                if (CarPresenter.this.mOnChangedCarListener != null) {
                    CarPresenter.this.mHandler.post(new Runnable() { // from class: com.yftech.yfhome.presenter.CarPresenter.9.2
                        @Override // java.lang.Runnable
                        public void run() {
                            CarPresenter.this.resetCarBodyPicture();
                            CarPresenter.this.mOnChangedCarListener.onChangedRearRightDoor(CarPresenter.mIsRearRightDoorOpen);
                        }
                    });
                }
            }
        }

        public void onTailDoorStateChanged(final ICarDoor.TailDoorState tailDoorState) {
            Log.i(CarPresenter.TAG, "onTailDoorStateChanged: state = " + tailDoorState + "   isPlgmfunccfgPresent = " + CarPresenter.this.isPlgmfunccfgPresent);
            if (CarPresenter.this.isPlgmfunccfgPresent) {
                boolean z = ICarDoor.TailDoorState.FULLY_CLOSED != tailDoorState;
                if (CarPresenter.mIsTrunkOpen != z) {
                    boolean unused = CarPresenter.mIsTrunkOpen = z;
                    if (CarPresenter.this.mOnChangedCarListener != null) {
                        CarPresenter.this.mHandler.post(new Runnable() { // from class: com.yftech.yfhome.presenter.-$$Lambda$CarPresenter$9$QeNg-7CKKrLhnKlX5gufEafrzz4
                            @Override // java.lang.Runnable
                            public final void run() {
                                CarPresenter.AnonymousClass9.lambda$onTailDoorStateChanged$0(this.f$0);
                            }
                        });
                    }
                }
                if (CarPresenter.this.mOnChangedCarListener != null) {
                    CarPresenter.this.mHandler.post(new Runnable() { // from class: com.yftech.yfhome.presenter.-$$Lambda$CarPresenter$9$piw1z-SL7AgqM7KiwUjn8oOMnwo
                        @Override // java.lang.Runnable
                        public final void run() {
                            CarPresenter.this.mOnChangedCarListener.onTailDoorStateChanged(tailDoorState);
                        }
                    });
                }
            }
        }

        public void onTrunkDoorStateChanged(ICarDoor.DoorState doorState) {
            Log.i(CarPresenter.TAG, "onTrunkDoorStateChanged: " + doorState);
            if (CarPresenter.this.isPlgmfunccfgPresent) {
                Log.i(CarPresenter.TAG, "The vehicle is an electric back door, Don't judge the status ! ,juge ***onTailDoorStateChanged() ");
                return;
            }
            boolean z = ICarDoor.DoorState.OPEN == doorState;
            if (CarPresenter.mIsTrunkOpen != z) {
                boolean unused = CarPresenter.mIsTrunkOpen = z;
                if (CarPresenter.this.mOnChangedCarListener != null) {
                    CarPresenter.this.mHandler.post(new Runnable() { // from class: com.yftech.yfhome.presenter.CarPresenter.9.4
                        @Override // java.lang.Runnable
                        public void run() {
                            CarPresenter.this.resetCarBodyPicture();
                            CarPresenter.this.mOnChangedCarListener.onChangedTrunk(CarPresenter.mIsTrunkOpen);
                        }
                    });
                }
            }
        }
    }

    public interface OnChangedCarListener {
        void onChangedACMode(int i);

        void onChangedCarBodyNoLogoReset();

        void onChangedCarBodyPicture(int i);

        void onChangedDrivingMode(ICarDrive.DriveMode driveMode);

        void onChangedFrontLeftDoor(boolean z);

        void onChangedFrontRightDoor(boolean z);

        void onChangedHood(boolean z);

        void onChangedMirror(boolean z);

        void onChangedPowerMode(ICarPower.PowerMode powerMode);

        void onChangedRearLeftDoor(boolean z);

        void onChangedRearRightDoor(boolean z);

        void onChangedTrunk(boolean z);

        void onGearPositionChanged(ICarInfo.GearPosition gearPosition);

        void onTailDoorStateChanged(ICarDoor.TailDoorState tailDoorState);
    }

    private CarPresenter(Context context) {
        this.isAutoAir = false;
        this.isAirSingleZone = false;
        this.isPlgmfunccfgPresent = false;
        this.isRightHandDriveVehicle = false;
        this.mContext = context;
        this.mAirConditionManager.registerListener(this.mAirConditionCallback);
        this.mCarDriveManager = CarDriveManager.get();
        this.mCarDriveManager.registerListener(this.mCarDriveListener);
        this.mIsRearDefogEnable = this.mAirConditionManager.isRearDefrostEnabled();
        this.mAutoMode = this.mAirConditionManager.getAutoMode();
        this.mIsAnionEnable = this.mAirConditionManager.isIonEnabled();
        this.mDrivingMode = this.mCarDriveManager.getDriveMode();
        this.mCarPowerManager = CarPowerManager.get();
        this.mCarPowerManager.registerListener(this.mCarPowerListener);
        this.mPowerMode = this.mCarPowerManager.getPowerMode();
        CarInfoManager.get().registerListener(this.mCarInfoListener);
        this.mGear = CarInfoManager.get().getGearPosition();
        this.mCarDoorManager = CarDoorManager.get();
        this.mCarDoorManager.registerListener(this.mCarDoorListener);
        this.isRightHandDriveVehicle = CarConfig.getLeftRightHandDriveVehicles() == ICarConfig.LeftRightHandDriveVehicles.RIGHT;
        this.isGacLogoPresent = Utils.isGACLogoPresent();
        if (this.isRightHandDriveVehicle) {
            mIsFrontRightDoorOpen = ICarDoor.DoorState.OPEN == this.mCarDoorManager.getDriverDoorState();
            mIsFrontLeftDoorOpen = ICarDoor.DoorState.OPEN == this.mCarDoorManager.getPassengerDoorState();
        } else {
            mIsFrontLeftDoorOpen = ICarDoor.DoorState.OPEN == this.mCarDoorManager.getDriverDoorState();
            mIsFrontRightDoorOpen = ICarDoor.DoorState.OPEN == this.mCarDoorManager.getPassengerDoorState();
        }
        mIsRearLeftDoorOpen = ICarDoor.DoorState.OPEN == this.mCarDoorManager.getRearLeftDoorState();
        mIsRearRightDoorOpen = ICarDoor.DoorState.OPEN == this.mCarDoorManager.getRearRightDoorState();
        mIsTrunkOpen = ICarDoor.DoorState.OPEN == this.mCarDoorManager.getTrunkDoorState();
        mIsHoodOpen = ICarDoor.DoorState.OPEN == this.mCarDoorManager.getHoodDoorState();
        this.isAutoAir = CarConfig.getAirConditionType() == ICarConfig.AirConditionType.AUTO;
        this.isAirSingleZone = CarConfig.getAirConditioningZones() == ICarConfig.AirConditioningZones.SINGLE_ZONE;
        this.isPlgmfunccfgPresent = CarConfig.isPlgmfunccfgPresent();
    }

    public static CarPresenter getInstance(Context context) {
        if (mInstance == null) {
            synchronized (CarPresenter.class) {
                if (mInstance == null) {
                    mInstance = new CarPresenter(context.getApplicationContext());
                }
            }
        }
        return mInstance;
    }

    public static int getmCurrentIndex() {
        return mCurrentIndex;
    }

    public static /* synthetic */ void lambda$testDoorStatus$0(CarPresenter carPresenter) {
        carPresenter.resetCarBodyPicture();
        carPresenter.mOnChangedCarListener.onChangedFrontLeftDoor(mIsFrontLeftDoorOpen);
    }

    public static /* synthetic */ void lambda$updateFrontLeftOoorState$1(CarPresenter carPresenter) {
        carPresenter.resetCarBodyPicture();
        carPresenter.mOnChangedCarListener.onChangedFrontLeftDoor(mIsFrontLeftDoorOpen);
    }

    public static /* synthetic */ void lambda$updateFrontRightDoorState$2(CarPresenter carPresenter) {
        carPresenter.resetCarBodyPicture();
        carPresenter.mOnChangedCarListener.onChangedFrontRightDoor(mIsFrontRightDoorOpen);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateFrontLeftOoorState(boolean z) {
        if (mIsFrontLeftDoorOpen != z) {
            mIsFrontLeftDoorOpen = z;
            if (this.mOnChangedCarListener != null) {
                this.mHandler.post(new Runnable() { // from class: com.yftech.yfhome.presenter.-$$Lambda$CarPresenter$Fc2Wk0rw3PPmmqUEH2IKVeai-Mg
                    @Override // java.lang.Runnable
                    public final void run() {
                        CarPresenter.lambda$updateFrontLeftOoorState$1(this.f$0);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateFrontRightDoorState(boolean z) {
        if (mIsFrontRightDoorOpen != z) {
            mIsFrontRightDoorOpen = z;
            if (this.mOnChangedCarListener != null) {
                this.mHandler.post(new Runnable() { // from class: com.yftech.yfhome.presenter.-$$Lambda$CarPresenter$bqHihyUm3Rj3wLh7Vg1xLbEasG8
                    @Override // java.lang.Runnable
                    public final void run() {
                        CarPresenter.lambda$updateFrontRightDoorState$2(this.f$0);
                    }
                });
            }
        }
    }

    public synchronized void adjustCarBody(int i) {
        try {
            if (i == 0) {
                if (mCurrentIndex <= 0) {
                    mCurrentIndex = this.CAR_BODY_PICTURE_RESID.length - 1;
                } else {
                    mCurrentIndex -= 5;
                }
            } else if (this.CAR_BODY_PICTURE_RESID.length - 1 <= mCurrentIndex) {
                mCurrentIndex = 0;
            } else {
                mCurrentIndex += 5;
            }
            if (this.CAR_BODY_PICTURE_RESID.length - 1 < mCurrentIndex) {
                mCurrentIndex = this.CAR_BODY_PICTURE_RESID.length - 1;
            } else if (mCurrentIndex < 0) {
                mCurrentIndex = 0;
            }
            if (this.mOnChangedCarListener != null) {
                this.mOnChangedCarListener.onChangedCarBodyPicture(this.CAR_BODY_PICTURE_RESID[mCurrentIndex]);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public int getACMode() {
        Log.i(TAG, "getACMode:" + this.mACMode);
        return this.mACMode;
    }

    public int getAirConditionPowerState() {
        switch (AnonymousClass14.$SwitchMap$com$yftech$vehicle$internal$adapter$IAirCondition$WindSpeed[this.mAirConditionManager.getWindSpeed().ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
                return 0;
            case 8:
                return 1;
            default:
                return 2;
        }
    }

    public ICarDrive.DriveMode getDrivingMode() {
        Log.i(TAG, "getDrivingMode:" + this.mDrivingMode);
        return this.mDrivingMode;
    }

    public ICarInfo.GearPosition getGear() {
        return this.mGear;
    }

    public boolean hasCarDoorOpen() {
        Log.i(TAG, "hasCarDoorOpen: \nmIsHoodOpen = " + mIsHoodOpen + "\nmIsTrunkOpen = " + mIsTrunkOpen + "\nmIsFrontLeftDoorOpen = " + mIsFrontLeftDoorOpen + "\nmIsFrontRightDoorOpen = " + mIsFrontRightDoorOpen + "\nmIsRearLeftDoorOpen = " + mIsRearLeftDoorOpen + "\nmIsRearRightDoorOpen = " + mIsRearRightDoorOpen);
        return mIsHoodOpen || mIsTrunkOpen || mIsFrontLeftDoorOpen || mIsFrontRightDoorOpen || mIsRearLeftDoorOpen || mIsRearRightDoorOpen;
    }

    public boolean isEngineOn() {
        boolean z = this.mPowerMode == ICarPower.PowerMode.ON;
        Log.i(TAG, "isEngineOn:" + z);
        return z;
    }

    public boolean isFrontLeftDoorOpen() {
        Log.i(TAG, "isFrontLeftDoorOpen:" + mIsFrontLeftDoorOpen);
        return mIsFrontLeftDoorOpen;
    }

    public boolean isFrontRightDoorOpen() {
        Log.i(TAG, "isFrontRightDoorOpen:" + mIsFrontRightDoorOpen);
        return mIsFrontRightDoorOpen;
    }

    public boolean isHoodOpen() {
        Log.i(TAG, "isHoodOpen:" + mIsHoodOpen);
        return mIsHoodOpen;
    }

    public boolean isRearLeftDoorOpen() {
        Log.i(TAG, "isRearLeftDoorOpen:" + mIsRearLeftDoorOpen);
        return mIsRearLeftDoorOpen;
    }

    public boolean isRearRightDoorOpen() {
        Log.i(TAG, "isRearRightDoorOpen:" + mIsRearRightDoorOpen);
        return mIsRearRightDoorOpen;
    }

    public boolean isTrunkOpen() {
        Log.i(TAG, "isTrunkOpen:" + mIsTrunkOpen);
        return mIsTrunkOpen;
    }

    public void resetCarBodyPicture() {
        mCurrentIndex = 0;
        if (this.mOnChangedCarListener != null) {
            if (this.isGacLogoPresent) {
                this.mOnChangedCarListener.onChangedCarBodyPicture(hasCarDoorOpen() ? R.mipmap.home_car_body : R.mipmap.home_360_00342);
            } else {
                if (!hasCarDoorOpen()) {
                    this.mOnChangedCarListener.onChangedCarBodyNoLogoReset();
                    return;
                }
                this.mOnChangedCarListener.onChangedCarBodyPicture(R.mipmap.home_car_body_nologo);
            }
            this.mOnChangedCarListener.onChangedFrontLeftDoor(mIsFrontLeftDoorOpen);
            this.mOnChangedCarListener.onChangedRearLeftDoor(mIsRearLeftDoorOpen);
            this.mOnChangedCarListener.onChangedHood(mIsHoodOpen);
            this.mOnChangedCarListener.onChangedMirror(mIsTrunkOpen);
        }
    }

    public void setACMode(int i, boolean z) {
        Log.i(TAG, "setACMode mode:" + i + ", status=" + z);
        if (z) {
            mACModeSetting = true;
            this.mACMode = i;
        } else {
            this.mACMode = -1;
        }
        switch (i) {
            case 0:
                new Thread(new Runnable() { // from class: com.yftech.yfhome.presenter.CarPresenter.2
                    @Override // java.lang.Runnable
                    public void run() {
                        if (CarPresenter.this.mHandler.hasMessages(11)) {
                            CarPresenter.this.mHandler.removeMessages(11);
                        }
                        if (CarPresenter.this.getAirConditionPowerState() != 0) {
                            CarPresenter.this.mAirConditionManager.performOffButtonClick();
                            SystemClock.sleep(500L);
                        }
                        if (CarPresenter.this.isAutoAir && CarPresenter.this.mAirConditionManager.getAutoMode() != IAirCondition.AutoMode.AUTO_MODE) {
                            CarPresenter.this.mAirConditionManager.performAutoButtonClick();
                            Utils.setAcAutoDialogShowFlag(CarPresenter.this.mContext, 1);
                            SystemClock.sleep(500L);
                        } else if (!CarPresenter.this.isAutoAir) {
                            CarPresenter.this.mAirConditionManager.setWindSpeed(IAirCondition.WindSpeed.LEVEL_5);
                            SystemClock.sleep(500L);
                        }
                        CarPresenter.this.mAirConditionManager.setDriverTemperature(18.0f);
                        if (!CarPresenter.this.isAirSingleZone) {
                            CarPresenter.this.mAirConditionManager.setPassengerTemperature(18.0f);
                        }
                        if (!CarPresenter.this.isAutoAir) {
                            CarPresenter.this.mAirConditionManager.setWindMode(IAirCondition.WindMode.FACE);
                            SystemClock.sleep(500L);
                            if (!CarPresenter.this.mAirConditionManager.isACEnabled()) {
                                CarPresenter.this.mAirConditionManager.performACButtonClick();
                            }
                            if (CarPresenter.this.mAirConditionManager.getAirCirculationState() != IAirCondition.AirCirculationState.INNER_AIR_CIRCULATION) {
                                CarPresenter.this.mAirConditionManager.performCirculationButtonClick();
                            }
                            if (!CarPresenter.this.isAirSingleZone && !CarPresenter.this.mAirConditionManager.isDualSyncEnabled()) {
                                CarPresenter.this.mAirConditionManager.performDualSyncButtonClick();
                            }
                        }
                        if (CarPresenter.this.mHandler.hasMessages(12)) {
                            CarPresenter.this.mHandler.removeMessages(12);
                        }
                        CarPresenter.this.mHandler.sendEmptyMessageDelayed(12, 3000L);
                        if (CarPresenter.this.mHandler.hasMessages(11)) {
                            CarPresenter.this.mHandler.removeMessages(11);
                        }
                        CarPresenter.this.mHandler.sendEmptyMessageDelayed(11, 3000L);
                    }
                }).start();
                break;
            case 1:
                new Thread(new Runnable() { // from class: com.yftech.yfhome.presenter.CarPresenter.3
                    @Override // java.lang.Runnable
                    public void run() {
                        if (CarPresenter.this.mHandler.hasMessages(11)) {
                            CarPresenter.this.mHandler.removeMessages(11);
                        }
                        if (CarPresenter.this.getAirConditionPowerState() != 0) {
                            CarPresenter.this.mAirConditionManager.performOffButtonClick();
                            SystemClock.sleep(500L);
                        }
                        if (CarPresenter.this.isAutoAir && CarPresenter.this.mAirConditionManager.getAutoMode() != IAirCondition.AutoMode.AUTO_MODE) {
                            CarPresenter.this.mAirConditionManager.performAutoButtonClick();
                            Utils.setAcAutoDialogShowFlag(CarPresenter.this.mContext, 1);
                            SystemClock.sleep(500L);
                        } else if (!CarPresenter.this.isAutoAir) {
                            CarPresenter.this.mAirConditionManager.setWindSpeed(IAirCondition.WindSpeed.LEVEL_5);
                            SystemClock.sleep(500L);
                        }
                        CarPresenter.this.mAirConditionManager.setDriverTemperature(28.0f);
                        if (!CarPresenter.this.isAirSingleZone) {
                            CarPresenter.this.mAirConditionManager.setPassengerTemperature(28.0f);
                        }
                        if (!CarPresenter.this.isAutoAir) {
                            CarPresenter.this.mAirConditionManager.setWindMode(IAirCondition.WindMode.FOOT);
                            SystemClock.sleep(500L);
                            if (CarPresenter.this.mAirConditionManager.isACEnabled()) {
                                CarPresenter.this.mAirConditionManager.performACButtonClick();
                            }
                            if (CarPresenter.this.mAirConditionManager.getAirCirculationState() == IAirCondition.AirCirculationState.INNER_AIR_CIRCULATION) {
                                CarPresenter.this.mAirConditionManager.performCirculationButtonClick();
                            }
                            if (!CarPresenter.this.isAirSingleZone && !CarPresenter.this.mAirConditionManager.isDualSyncEnabled()) {
                                CarPresenter.this.mAirConditionManager.performDualSyncButtonClick();
                            }
                        }
                        if (CarPresenter.this.mHandler.hasMessages(12)) {
                            CarPresenter.this.mHandler.removeMessages(12);
                        }
                        CarPresenter.this.mHandler.sendEmptyMessageDelayed(12, 3000L);
                        if (CarPresenter.this.mHandler.hasMessages(11)) {
                            CarPresenter.this.mHandler.removeMessages(11);
                        }
                        CarPresenter.this.mHandler.sendEmptyMessageDelayed(11, 3000L);
                    }
                }).start();
                break;
        }
    }

    public void setDrivingMode(ICarDrive.DriveMode driveMode) {
        Log.i(TAG, "setDrivingMode:" + driveMode);
        if (this.mHandler.hasMessages(10)) {
            this.mHandler.removeMessages(10);
        }
        Message messageObtainMessage = this.mHandler.obtainMessage(10);
        messageObtainMessage.arg1 = driveMode.ordinal();
        this.mHandler.sendMessageDelayed(messageObtainMessage, 3000L);
        Utils.setAvdcDialogShowFlag(this.mContext, 1);
        this.mCarDriveManager.setDriveMode(driveMode);
    }

    public void setOnChangedCarListener(OnChangedCarListener onChangedCarListener) {
        this.mOnChangedCarListener = onChangedCarListener;
    }

    public void testDoorStatus(int i, boolean z) {
        Log.i(TAG, "testDoorStatus::" + i + "::" + z);
        switch (i) {
            case 0:
                if (mIsFrontLeftDoorOpen != z) {
                    mIsFrontLeftDoorOpen = z;
                    if (this.mOnChangedCarListener != null) {
                        this.mHandler.post(new Runnable() { // from class: com.yftech.yfhome.presenter.-$$Lambda$CarPresenter$cI9gjdp5VJlazwuc5wkfCXnqjnM
                            @Override // java.lang.Runnable
                            public final void run() {
                                CarPresenter.lambda$testDoorStatus$0(this.f$0);
                            }
                        });
                    }
                }
                break;
            case 1:
                if (mIsFrontRightDoorOpen != z) {
                    mIsFrontRightDoorOpen = z;
                    if (this.mOnChangedCarListener != null) {
                        this.mHandler.post(new Runnable() { // from class: com.yftech.yfhome.presenter.CarPresenter.4
                            @Override // java.lang.Runnable
                            public void run() {
                                CarPresenter.this.resetCarBodyPicture();
                                CarPresenter.this.mOnChangedCarListener.onChangedFrontRightDoor(CarPresenter.mIsFrontRightDoorOpen);
                            }
                        });
                    }
                }
                break;
            case 2:
                if (mIsRearLeftDoorOpen != z) {
                    mIsRearLeftDoorOpen = z;
                    if (this.mOnChangedCarListener != null) {
                        this.mHandler.post(new Runnable() { // from class: com.yftech.yfhome.presenter.CarPresenter.5
                            @Override // java.lang.Runnable
                            public void run() {
                                CarPresenter.this.resetCarBodyPicture();
                                CarPresenter.this.mOnChangedCarListener.onChangedRearLeftDoor(CarPresenter.mIsRearLeftDoorOpen);
                            }
                        });
                    }
                }
                break;
            case 3:
                if (mIsRearRightDoorOpen != z) {
                    mIsRearRightDoorOpen = z;
                    if (this.mOnChangedCarListener != null) {
                        this.mHandler.post(new Runnable() { // from class: com.yftech.yfhome.presenter.CarPresenter.6
                            @Override // java.lang.Runnable
                            public void run() {
                                CarPresenter.this.resetCarBodyPicture();
                                CarPresenter.this.mOnChangedCarListener.onChangedRearRightDoor(CarPresenter.mIsRearRightDoorOpen);
                            }
                        });
                    }
                }
                break;
            case 4:
                if (mIsHoodOpen != z) {
                    mIsHoodOpen = z;
                    if (this.mOnChangedCarListener != null) {
                        this.mHandler.post(new Runnable() { // from class: com.yftech.yfhome.presenter.CarPresenter.7
                            @Override // java.lang.Runnable
                            public void run() {
                                CarPresenter.this.resetCarBodyPicture();
                                CarPresenter.this.mOnChangedCarListener.onChangedHood(CarPresenter.mIsHoodOpen);
                            }
                        });
                    }
                }
                break;
            case 5:
                if (mIsTrunkOpen != z) {
                    mIsTrunkOpen = z;
                    if (this.mOnChangedCarListener != null) {
                        this.mHandler.post(new Runnable() { // from class: com.yftech.yfhome.presenter.CarPresenter.8
                            @Override // java.lang.Runnable
                            public void run() {
                                CarPresenter.this.resetCarBodyPicture();
                                CarPresenter.this.mOnChangedCarListener.onChangedTrunk(CarPresenter.mIsTrunkOpen);
                            }
                        });
                    }
                }
                break;
        }
    }
}
