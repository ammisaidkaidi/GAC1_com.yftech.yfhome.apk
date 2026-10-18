package com.yftech.yfhome.utils;

import android.content.Context;
import android.content.SharedPreferences;

/* JADX INFO: loaded from: classes.dex */
public class SharedPrefsUtil {
    public static final String TAG_AUDIO_FOCUS_ON_BY_CLIENTID = "TAG_AUDIO_FOCUS_ON_BY_CLIENTID";
    public static final String TAG_IS_WALLPAPER_MODE = "TAG_WALL_MODE";
    public static final String TAG_WALLPAPER_DATA = "TAG_WALLPAPER_DATA";
    private static SharedPrefsUtil instance = new SharedPrefsUtil();
    private static SharedPreferences sp;

    private SharedPrefsUtil() {
    }

    public static SharedPrefsUtil getInstance(Context context) {
        if (sp == null) {
            sp = context.getSharedPreferences("first_time", 0);
        }
        return instance;
    }

    public boolean getBoolean(String str, Boolean bool) {
        return sp.getBoolean(str, bool.booleanValue());
    }

    public double getFloat(String str, Float f) {
        return sp.getFloat(str, f.floatValue());
    }

    public int getInt(String str, Integer num) {
        return sp.getInt(str, num.intValue());
    }

    public String getString(String str, String str2) {
        return sp.getString(str, str2);
    }

    public void remove(String str) {
        sp.edit().remove(str).apply();
    }

    public void save(String str, Object obj) {
        SharedPreferences.Editor editorEdit = sp.edit();
        if (obj instanceof String) {
            editorEdit.putString(str, (String) obj);
        } else if (obj instanceof Integer) {
            editorEdit.putInt(str, ((Integer) obj).intValue());
        } else if (obj instanceof Boolean) {
            editorEdit.putBoolean(str, ((Boolean) obj).booleanValue());
        } else if (obj instanceof Float) {
            editorEdit.putFloat(str, ((Float) obj).floatValue());
        }
        editorEdit.apply();
    }
}
