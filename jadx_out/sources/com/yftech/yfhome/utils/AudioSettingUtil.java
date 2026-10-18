package com.yftech.yfhome.utils;

import android.content.Context;
import android.media.AudioManager;
import android.text.TextUtils;
import android.util.Log;
import com.yftech.car.audio.CarAudioManager;
import com.yftech.car.media.data.CarMediaDataManager;
import com.yftech.car.media.data.entity.MediaFile;
import com.yftech.car.media.music.CarMusicManager;

/* JADX INFO: loaded from: classes.dex */
public class AudioSettingUtil {
    private static final String TAG = "AudioSettingUtil";

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

    private static int getCurrentSourceByClientId(String str) {
        int i = -1;
        if (str != null && !TextUtils.isEmpty(str)) {
            if (str.contains(Utils.CLIENT_ID_USB)) {
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
            } else if (str.contains(Utils.CLIENT_ID_BT_MUSIC)) {
                i = 2;
            } else if (str.contains(Utils.CLIENT_ID_CARLIFE)) {
                i = 3;
            } else if (str.contains(Utils.CLIENT_ID_CARPLAY)) {
                i = 4;
            }
        }
        Log.i(TAG, "getCurrentSourceByClientId clientId:" + str + ", ret:" + i);
        return i;
    }

    public static void playSystemClickSoundEffect(Context context) {
        ((AudioManager) context.getSystemService("audio")).playSoundEffect(0);
    }
}
