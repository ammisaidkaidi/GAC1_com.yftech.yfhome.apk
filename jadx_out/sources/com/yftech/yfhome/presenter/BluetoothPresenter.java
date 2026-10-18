package com.yftech.yfhome.presenter;

import android.bluetooth.BluetoothDevice;
import android.content.Context;
import android.os.Handler;
import android.util.Log;
import com.yftech.car.bluetooth.CarBluetoothManager;
import com.yftech.car.bluetooth.callback.CarBluetoothPhoneCallback;
import com.yftech.yfhome.utils.Utils;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class BluetoothPresenter {
    public static final String BT_VIEW_INDEX_KEY = "enter";
    public static final int BT_VIEW_KEYBOARD = 0;
    public static final int BT_VIEW_NORMAL = 4;
    public static final int BT_VIEW_SEARCH = 2;
    public static final int BT_VIEW_SET = 3;
    public static final int BT_VIEW_USER = 1;
    private static final String TAG = "BluetoothPresenter";
    private static volatile BluetoothPresenter mInstance;
    private int mBTPhoneConnectStatus;
    private CarBluetoothManager mCarBluetoothManager = CarBluetoothManager.getInstance();
    private Context mContext;
    private OnChangedBluetoothListener mOnChangedBluetoothListener;

    public interface OnChangedBluetoothListener {
        void onChangedBTConnect(int i);
    }

    private BluetoothPresenter(Context context) {
        this.mBTPhoneConnectStatus = 0;
        this.mContext = context;
        this.mBTPhoneConnectStatus = this.mCarBluetoothManager.isConnected(16) ? 2 : 0;
        this.mCarBluetoothManager.registerBluetoothPhoneCallback(new CarBluetoothPhoneCallback() { // from class: com.yftech.yfhome.presenter.BluetoothPresenter.1
            public void onBluetoothHfpConnectStatusChanged(BluetoothDevice bluetoothDevice, int i) {
                Log.i(BluetoothPresenter.TAG, "onBluetoothHfpConnectStatusChanged state:" + i);
                BluetoothPresenter.this.mBTPhoneConnectStatus = i;
                if (BluetoothPresenter.this.mOnChangedBluetoothListener != null) {
                    BluetoothPresenter.this.mOnChangedBluetoothListener.onChangedBTConnect(i);
                }
            }
        }, new Handler());
    }

    public static BluetoothPresenter getInstance(Context context) {
        if (mInstance == null) {
            synchronized (BluetoothPresenter.class) {
                if (mInstance == null) {
                    mInstance = new BluetoothPresenter(context.getApplicationContext());
                }
            }
        }
        return mInstance;
    }

    public int getBTPhoneConnectStatus() {
        Log.i(TAG, "getBTPhoneConnectStatus:" + this.mBTPhoneConnectStatus);
        return this.mBTPhoneConnectStatus;
    }

    public boolean isBlueToothConnected() {
        List<BluetoothDevice> pairedDevices = CarBluetoothManager.getInstance().getPairedDevices();
        Log.i(TAG, "isBlueToothConnected:" + pairedDevices);
        if (pairedDevices == null || pairedDevices.isEmpty()) {
            return false;
        }
        for (BluetoothDevice bluetoothDevice : pairedDevices) {
            if (bluetoothDevice != null) {
                int deviceConnectState = CarBluetoothManager.getInstance().getDeviceConnectState(bluetoothDevice, 11);
                int deviceConnectState2 = CarBluetoothManager.getInstance().getDeviceConnectState(bluetoothDevice, 12);
                int deviceConnectState3 = CarBluetoothManager.getInstance().getDeviceConnectState(bluetoothDevice, 16);
                Log.i(TAG, "isBlueToothConnected A2DP_SINKStatus: " + deviceConnectState + ", AVRCP_CONTROLLERStatus: " + deviceConnectState2 + ", HEADSET_CLIENTStatus: " + deviceConnectState3);
                if (deviceConnectState2 == 2 || deviceConnectState3 == 2) {
                    return true;
                }
            }
        }
        return false;
    }

    public void openBTView(int i) {
        Log.i(TAG, "openBTView:" + i);
        switch (i) {
            case 0:
            case 1:
            case 2:
                Utils.startAppByPackageName(this.mContext, Utils.PACKAGE_BT_PHONE, BT_VIEW_INDEX_KEY, i);
                break;
            case 3:
                Utils.sendBroadcast(this.mContext, Utils.ACTIOM_BT_SHOW_BY_SYSTEMUI);
                break;
            case 4:
                Utils.startAppByPackageName(this.mContext, Utils.PACKAGE_BT_PHONE);
                break;
        }
    }

    public void setOnChangedBluetoothListener(OnChangedBluetoothListener onChangedBluetoothListener) {
        this.mOnChangedBluetoothListener = onChangedBluetoothListener;
    }
}
