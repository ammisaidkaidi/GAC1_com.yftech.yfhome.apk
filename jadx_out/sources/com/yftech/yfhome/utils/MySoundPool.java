package com.yftech.yfhome.utils;

import android.content.Context;
import android.media.AudioAttributes;
import android.media.SoundPool;
import android.util.Log;
import com.yftech.yfhome.R;

/* JADX INFO: loaded from: classes.dex */
public class MySoundPool {
    private static final float COOL_RANGE = 0.1535f;
    private static final float DEF_RANGE = 0.5011872f;
    private static final float HEAT_RANGE = 0.1255f;
    private static final float INTERFACE_RANGE = 0.5f;
    private static final int MAX_PLAYING_SUM = 1;
    private Context mContext;
    private int mCoolId;
    private int mHeatId;
    private int mInterfaceId;
    private int mPopDlgId;
    public final String TAG = MySoundPool.class.getSimpleName();
    private SoundPool mSoundPool = new SoundPool.Builder().setMaxStreams(1).setAudioAttributes(new AudioAttributes.Builder().setUsage(13).setContentType(4).build()).build();

    public MySoundPool(Context context) {
        this.mContext = context;
        this.mInterfaceId = this.mSoundPool.load(this.mContext, R.raw.interface_sound_effect, 1);
        this.mCoolId = this.mSoundPool.load(this.mContext, R.raw.cool_sound_effect, 1);
        this.mHeatId = this.mSoundPool.load(this.mContext, R.raw.heat_sound_effect, 1);
    }

    public void playCoolSoundEffect() {
        int iPlay = this.mSoundPool.play(this.mCoolId, COOL_RANGE, COOL_RANGE, 1, 0, 1.0f);
        Log.i(this.TAG, "playCoolSoundEffect  streamID = " + iPlay);
    }

    public void playHeatSoundEffect() {
        int iPlay = this.mSoundPool.play(this.mHeatId, HEAT_RANGE, HEAT_RANGE, 1, 0, 1.0f);
        Log.i(this.TAG, "playHeatSoundEffect  streamID = " + iPlay);
    }

    public void playInterfaceSoundEffect() {
        if (!Utils.isOpenInterfaceSoundEffect(this.mContext)) {
            AudioSettingUtil.playSystemClickSoundEffect(this.mContext.getApplicationContext());
            return;
        }
        int iPlay = this.mSoundPool.play(this.mInterfaceId, INTERFACE_RANGE, INTERFACE_RANGE, 1, 0, 1.0f);
        Log.i(this.TAG, "playInterfaceSoundEffect  streamID = " + iPlay);
    }

    public void playPopDlgSoundEffect() {
    }
}
