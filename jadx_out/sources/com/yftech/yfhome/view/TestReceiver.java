package com.yftech.yfhome.view;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.SystemProperties;

/* JADX INFO: loaded from: classes.dex */
public class TestReceiver extends BroadcastReceiver {
    public static final String ACTION = "launchtest";
    private static final String TYPE = "type";
    private static boolean isTestOn = "1".equals(SystemProperties.get("systemui.test", "0"));
    private static boolean isAirConditionOn = true;
    private static boolean isTestEngineOn = false;
    private static boolean isOneWindOn = false;
    public static float mDriveTemp = 19.5f;

    public TestReceiver() {
        if (isTestOn()) {
            isAirConditionOn = true;
            isTestEngineOn = true;
        }
    }

    public static boolean isAirConditionOn() {
        return isAirConditionOn;
    }

    public static boolean isOneWindOn() {
        return isOneWindOn;
    }

    public static boolean isTestEngineOn() {
        return isTestEngineOn;
    }

    public static boolean isTestOn() {
        return isTestOn;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        int intExtra = intent.getIntExtra(TYPE, 0);
        intent.getFloatExtra("temp", 0.0f);
        if (intExtra != 0) {
            return;
        }
        isTestOn = true;
        isAirConditionOn = !isAirConditionOn;
        isTestEngineOn = true ^ isTestEngineOn;
    }
}
