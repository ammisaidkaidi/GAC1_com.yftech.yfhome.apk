package com.yftech.yfhome.utils;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.SystemProperties;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import com.yftech.car.audio.CarAudioManager;
import com.yftech.car.media.data.CarMediaDataManager;
import com.yftech.car.media.data.entity.MediaFile;
import com.yftech.car.media.music.CarMusicManager;
import com.yftech.vehicle.internal.adapter.ICarConfig;
import com.yftech.vehicle.internal.adapter.IHostConfig;
import com.yftech.vehicle.sdk.CarConfig;
import com.yftech.vehicle.sdk.HostConfig;
import java.io.File;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class Utils {
    public static final String ACTIOM_BT_SHOW_BY_SYSTEMUI = "com.systemui.bt.show";
    public static final String ACTION_BT_SETTING_START = "com.yftech.intent.action.start.bt.setting";
    public static final String ACTION_BT_UI_SETTING_START = "com.yftech.intent.action.bluetooth.ui.settings";
    public static final String ACTION_CARPLAY_SETTING_START = "com.yftech.intent.action.start.carplay.setting";
    public static final String ACTION_DRIVE_MODE_APP = "com.yftech.intent.action.start.settings.avdc";
    public static final String ACTIVITY_MUSIC = "com.yftech.libmusic.MusicMainActivity";
    public static final String ACTIVITY_RADIO = "com.yftech.libradio.RadioMainActivity";
    public static final String CLIENT_ID_BT_MUSIC = "com.yftech.service.bluetooth.profiles.AvrcpManager";
    public static final String CLIENT_ID_CARLIFE = "carlife";
    public static final String CLIENT_ID_CARPLAY = "com.autochips.carplay.resourcemanagerment";
    public static final String CLIENT_ID_HICAR = "hicar";
    public static final String CLIENT_ID_RADIO = "com.yftech.radio";
    public static final String CLIENT_ID_USB = "com.yftech.media.music.service.MusicService";
    private static final String FILE_CERTIFICATE_HICAR_PATH = "/sdcard/certificate_hicar";
    private static final String FILE_CERTIFICATE_PATH = "/data/media/0/certificate";
    public static final String KEY_INTERFACE_SOUND_EFFECT = "interface_sound_effect";
    public static final String MUSIC_SOURCE_KEY = "music_source";
    public static final String MUSIC_SOURCE_OF_BLUETOOTH = "MUSIC_SOURCE_OF_BLUETOOTH";
    public static final String MUSIC_SOURCE_OF_CARLIFE = "MUSIC_SOURCE_OF_CARLIFE";
    public static final String MUSIC_SOURCE_OF_CARPLAY = "MUSIC_SOURCE_OF_CARPLAY";
    public static final String MUSIC_SOURCE_OF_USB1 = "MUSIC_SOURCE_OF_USB1";
    public static final String MUSIC_SOURCE_OF_USB2 = "MUSIC_SOURCE_OF_USB2";
    public static final String MYCAR_ACTION_UI_START = "com.yftech.yfmycar.main";
    public static final String MYCAR_DATA_SCHEME = "mycarscheme";
    public static final String PACKAGE_BT_MUSIC = "com.yftech.btmusic";
    public static final String PACKAGE_BT_PHONE = "com.yftech.btphone";
    public static final String PACKAGE_CARLIFE = "com.baidu.carlifevehicle";
    public static final String PACKAGE_CARPLAY = "com.autochips.carplayapp";
    public static final String PACKAGE_HICAR = "com.yftech.hicar";
    public static final String PACKAGE_MULTIMEDIA = "com.yftech.multimedia";
    public static final String PACKAGE_RADIO = "com.yftech.radio";
    public static final String PACKAGE_SETTINGS = "com.yftech.settings";
    public static final String PACKAGE_SYSTEMUI = "com.android.systemui";
    public static final String PACKAGE_USB = "com.yftech.media.service";
    private static final String TAG = "Utils";
    public static final int VALUE_INTERFACE_SOUND_EFFECT_CLOSE = 0;
    public static final int VALUE_INTERFACE_SOUND_EFFECT_OPEN = 1;
    public static final String WallPaperSettingAction = "com.yftech.multimedia.action.wallpaper.setting";
    public static final String WallPaperSettingData = "com.yftech.multimedia.data.wallpaper.setting";

    /* JADX INFO: renamed from: com.yftech.yfhome.utils.Utils$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$yftech$vehicle$internal$adapter$IHostConfig$RadioFrequency = new int[IHostConfig.RadioFrequency.values().length];

        static {
            try {
                $SwitchMap$com$yftech$vehicle$internal$adapter$IHostConfig$RadioFrequency[IHostConfig.RadioFrequency.CHINA_MIDDLEEAST_AFRICA.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$yftech$vehicle$internal$adapter$IHostConfig$RadioFrequency[IHostConfig.RadioFrequency.EUROPE2.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$yftech$vehicle$internal$adapter$IHostConfig$RadioFrequency[IHostConfig.RadioFrequency.EASTERN_EUROPE1.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$yftech$vehicle$internal$adapter$IHostConfig$RadioFrequency[IHostConfig.RadioFrequency.AUSTRALIA.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$yftech$vehicle$internal$adapter$IHostConfig$RadioFrequency[IHostConfig.RadioFrequency.USA.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$yftech$vehicle$internal$adapter$IHostConfig$RadioFrequency[IHostConfig.RadioFrequency.LATIN_AMERICA.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$yftech$vehicle$internal$adapter$IHostConfig$RadioFrequency[IHostConfig.RadioFrequency.JAPAN.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$yftech$vehicle$internal$adapter$IHostConfig$RadioFrequency[IHostConfig.RadioFrequency.EASTERN_EUROPE2.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$yftech$vehicle$internal$adapter$IHostConfig$RadioFrequency[IHostConfig.RadioFrequency.SOUTHEAST_ASIA.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$yftech$vehicle$internal$adapter$IHostConfig$RadioFrequency[IHostConfig.RadioFrequency.AFRICA_2.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$yftech$vehicle$internal$adapter$IHostConfig$RadioFrequency[IHostConfig.RadioFrequency.EUROPE1.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    public interface MyCarScheme {
        public static final int ATMOSPHERE_LAMP = 1;
        public static final int FRONT_LEFT_WINDOW = 2;
        public static final int FRONT_RIGHT_WINDOW = 3;
        public static final int FRONT_SEAT = 6;
        public static final int FRONT_SEAT_RIGHT = 7;
        public static final int LEFT_REARVIEW_MIRROR = 8;
        public static final int REAR_LEFT_SLIDING_DOOR = 4;
        public static final int REAR_RIGHT_SLIDING_DOOR = 5;
        public static final int RIGHT_REARVIEW_MIRROR = 9;
        public static final int SKY_LIGHT = 0;
        public static final int TAILGATE = 10;
    }

    public static String convertStationName(String str) {
        if (str.length() <= 16) {
            return str;
        }
        return str.substring(0, 16) + "...";
    }

    public static int getAudioFocusByClientId(String str) {
        int i = -1;
        if (str != null && !TextUtils.isEmpty(str)) {
            if (str.contains(CLIENT_ID_USB)) {
                MediaFile playMusic = CarMusicManager.getInstance().getPlayMusic();
                String data = playMusic != null ? playMusic.getData() : null;
                Log.i(TAG, "getCurrentSourceByClientId:path=" + data);
                if (!TextUtils.isEmpty(data)) {
                    int usbIndex = CarMediaDataManager.getInstance().getUsbIndex(data);
                    if (usbIndex == 0) {
                        i = 0;
                    } else {
                        i = 1 == usbIndex ? 1 : 6;
                    }
                }
            } else if (str.contains(CLIENT_ID_BT_MUSIC)) {
                i = 2;
            } else if (str.contains(CLIENT_ID_CARLIFE)) {
                i = 3;
            } else if (str.contains(CLIENT_ID_CARPLAY)) {
                i = 4;
            } else if (str.contains("com.yftech.radio")) {
                i = 7;
            }
        }
        Log.i(TAG, "getAudioFocusByClientId clientId:" + str + ", ret:" + i);
        return i;
    }

    public static int getCurrentMediaSource() {
        String currentMediaSource = CarAudioManager.getInstance().getCurrentMediaSource();
        if (TextUtils.isEmpty(currentMediaSource)) {
            return -1;
        }
        String[] strArrSplit = currentMediaSource.split(",");
        if (strArrSplit.length >= 3) {
            return getCurrentSourceByClientId(strArrSplit[2]);
        }
        return -1;
    }

    public static int getCurrentSourceByClientId(String str) {
        int i = -1;
        if (str != null && !TextUtils.isEmpty(str)) {
            if (str.contains(CLIENT_ID_USB)) {
                MediaFile playMusic = CarMusicManager.getInstance().getPlayMusic();
                String data = playMusic != null ? playMusic.getData() : null;
                Log.i(TAG, "getCurrentSourceByClientId:path=" + data);
                if (!TextUtils.isEmpty(data)) {
                    int usbIndex = CarMediaDataManager.getInstance().getUsbIndex(data);
                    if (usbIndex == 0) {
                        i = 0;
                    } else {
                        i = 1 == usbIndex ? 1 : 6;
                    }
                }
            } else if (str.contains(CLIENT_ID_BT_MUSIC)) {
                i = 2;
            } else if (str.contains(CLIENT_ID_CARLIFE)) {
                i = 3;
            } else if (str.contains(CLIENT_ID_CARPLAY)) {
                i = 4;
            }
        }
        Log.i(TAG, "getCurrentSourceByClientId clientId:" + str + ", ret:" + i);
        return i;
    }

    public static String getTopActivityPackageName(Context context) {
        ComponentName topComponentName = getTopComponentName(context);
        if (topComponentName == null) {
            return null;
        }
        return topComponentName.getPackageName();
    }

    public static ComponentName getTopComponentName(Context context) {
        if (context == null) {
            Log.e(TAG, "getTopComponentName  context == null");
            return null;
        }
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        if (activityManager == null) {
            Log.e(TAG, "getTopComponentName  activityManager == null");
            return null;
        }
        List<ActivityManager.RunningTaskInfo> runningTasks = activityManager.getRunningTasks(1);
        if (runningTasks == null || runningTasks.size() <= 0) {
            return null;
        }
        return runningTasks.get(0).topActivity;
    }

    public static boolean isArLanguage() {
        String language = Locale.getDefault().getLanguage();
        Log.i(TAG, "getLanguage:: " + language);
        return "ar".equals(language);
    }

    public static boolean isCanOpenMyCar() {
        boolean z = CarConfig.isIalPresent() || isOpenCloseControlConfigShow() || isCockpitConfigShow();
        Log.i(TAG, "isCanOpenMyCar: canOpenMyCar = " + z);
        return z;
    }

    public static boolean isCarplayCertificate() {
        boolean zExists = new File(FILE_CERTIFICATE_PATH).exists();
        Log.i(TAG, "isCarplayCertificate carplayCertificate:" + zExists);
        return zExists;
    }

    public static boolean isCockpitConfigShow() {
        boolean z = CarConfig.getHeatingAndVentilationFl() != ICarConfig.HeatingAndVentilationFl.NOT_PRESENT || CarConfig.getHeatingAndVentilationFr() != ICarConfig.HeatingAndVentilationFr.NOT_PRESENT || CarConfig.isSeatControlPresent() || CarConfig.isRearviewMirrorAdjustmentPresent();
        Log.i(TAG, "座舱是否显示 isCockpitConfigShow: " + z);
        return z;
    }

    public static boolean isFmKeepTwoDecima() {
        IHostConfig.RadioFrequency radioFrequency = HostConfig.getRadioFrequency();
        boolean z = false;
        switch (AnonymousClass1.$SwitchMap$com$yftech$vehicle$internal$adapter$IHostConfig$RadioFrequency[radioFrequency.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
                break;
            case 8:
            case 9:
            case 10:
            case 11:
                z = true;
                break;
            default:
                Log.i(TAG, "isFmKeepTwoDecima() unknown radio radioFrequency");
                break;
        }
        Log.i(TAG, "isFmKeepTwoDecima() radioFrequency:" + radioFrequency + " isFmKeepTwoDecima:" + z);
        return z;
    }

    public static boolean isGACLogoPresent() {
        boolean zIsGACLogoPresent = CarConfig.isGACLogoPresent();
        Log.i(TAG, "isGACLogoPresent = " + zIsGACLogoPresent);
        return zIsGACLogoPresent;
    }

    public static boolean isHiCarCertificate() {
        boolean zExists = new File(FILE_CERTIFICATE_HICAR_PATH).exists();
        Log.i(TAG, "isHiCarCertificate hiCarCertificate:" + zExists);
        return zExists;
    }

    public static boolean isHideCar(Context context) {
        boolean z = Settings.Global.getInt(context.getContentResolver(), "com.yftech.engineeringmode.hide_car", 0) == 1;
        Log.i(TAG, "isHideCar: " + z);
        return z;
    }

    public static boolean isOpenCloseControlConfigShow() {
        boolean z = CarConfig.getWindowControl() != ICarConfig.WindowControl.NOT_PRESENT || CarConfig.isPlgmfunccfgPresent() || CarConfig.isRoofControlPresent();
        Log.i(TAG, "开关闭合是否显示 isOpenCloseControlConfigShow：" + z);
        return z;
    }

    public static boolean isOpenInterfaceSoundEffect(Context context) {
        int i = Settings.Global.getInt(context.getContentResolver(), KEY_INTERFACE_SOUND_EFFECT, -1);
        Log.i(TAG, "isOpenInterfaceSoundEffect: status = " + i);
        if (i == -1) {
            i = HostConfig.getInterfaceSound() == IHostConfig.InterfaceSound.ON ? 1 : 0;
            Settings.Global.putInt(context.getContentResolver(), KEY_INTERFACE_SOUND_EFFECT, i);
        }
        return i == 1;
    }

    public static boolean isRadioDABPresent() {
        IHostConfig.RadioDABAndRDSConfig radioDABAndRDSConfiguration = HostConfig.getRadioDABAndRDSConfiguration();
        Log.d(TAG, "isRadioDABPresent: " + radioDABAndRDSConfiguration);
        return radioDABAndRDSConfiguration == IHostConfig.RadioDABAndRDSConfig.DAB || radioDABAndRDSConfiguration == IHostConfig.RadioDABAndRDSConfig.DAB_RDS;
    }

    public static boolean isRadioPresent() {
        IHostConfig.RadioConfiguration radioConfiguration = HostConfig.getRadioConfiguration();
        boolean z = radioConfiguration == IHostConfig.RadioConfiguration.FM || radioConfiguration == IHostConfig.RadioConfiguration.AM || radioConfiguration == IHostConfig.RadioConfiguration.FM_PLUSAM;
        Log.i(TAG, "isRadioPresent: radioCofig = " + radioConfiguration);
        return z;
    }

    public static boolean isRadioRdsPresent() {
        IHostConfig.RadioDABAndRDSConfig radioDABAndRDSConfiguration = HostConfig.getRadioDABAndRDSConfiguration();
        Log.d(TAG, "getRadioDABAndRDSConfiguration: " + radioDABAndRDSConfiguration);
        return radioDABAndRDSConfiguration == IHostConfig.RadioDABAndRDSConfig.RDS || radioDABAndRDSConfiguration == IHostConfig.RadioDABAndRDSConfig.DAB_RDS;
    }

    public static boolean isRtl() {
        return TextUtils.getLayoutDirectionFromLocale(Locale.getDefault()) == 1;
    }

    public static boolean isSportPlusPresent() {
        boolean zIsSportPlusPresent = CarConfig.isSportPlusPresent();
        Log.d(TAG, "isSportPlusPresent result:" + zIsSportPlusPresent);
        return zIsSportPlusPresent;
    }

    public static boolean sendBroadcast(Context context, @NonNull String str) {
        try {
            context.sendBroadcast(new Intent(str));
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public static void setAcAutoDialogShowFlag(Context context, int i) {
        Log.d(TAG, "setAcAutoDialogShowFlag: flag = " + i);
        SystemProperties.set("ac_auto_dialog_show", String.valueOf(i));
    }

    public static void setAvdcDialogShowFlag(Context context, int i) {
        Log.d(TAG, "setAvdcDialogShowFlag: flag = " + i);
        SystemProperties.set("avdc_dialog_show", String.valueOf(i));
    }

    public static void setImmersiveViewStatusBar(Activity activity) {
        activity.getWindow().getDecorView().setSystemUiVisibility(1536);
        activity.getWindow().addFlags(768);
    }

    public static boolean startAppByAction(Context context, @NonNull Intent intent) {
        try {
            intent.addFlags(271581184);
            intent.addFlags(65536);
            context.startActivity(intent);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public static boolean startAppByAction(Context context, String str) {
        try {
            Intent intent = new Intent(str);
            intent.addFlags(271581184);
            intent.addFlags(65536);
            context.startActivity(intent);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public static boolean startAppByPackageName(Context context, String str) {
        if (str != null && str.equals(getTopActivityPackageName(context))) {
            return true;
        }
        Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(str);
        if (launchIntentForPackage == null) {
            Log.e(TAG, "intent is null, startAppByPackageName failed!");
            return false;
        }
        launchIntentForPackage.addFlags(3145728);
        launchIntentForPackage.addFlags(65536);
        context.startActivity(launchIntentForPackage);
        return true;
    }

    public static boolean startAppByPackageName(Context context, String str, String str2, int i) {
        if (str != null && str.equals(getTopActivityPackageName(context))) {
            return true;
        }
        Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(str);
        if (launchIntentForPackage == null) {
            Log.e(TAG, "intent is null, startAppByPackageName failed!");
            return false;
        }
        launchIntentForPackage.addFlags(3145728);
        launchIntentForPackage.addFlags(65536);
        launchIntentForPackage.putExtra(str2, i);
        context.startActivity(launchIntentForPackage);
        return true;
    }

    public static boolean startAppByView(Context context, String str, String str2, String str3, String str4) {
        try {
            Intent intent = new Intent();
            intent.setClassName(str, str2);
            if (str4 != null && !TextUtils.isEmpty(str4)) {
                intent.putExtra(str3, str4);
            }
            context.startActivity(intent);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}
