package com.yftech.yfhome.presenter.carlife;

/* JADX INFO: loaded from: classes.dex */
public interface ICarlifeListener {
    void onCarlifeConnectChanged(int i);

    void onCarlifeMusicID3Changed(String str, String str2);

    void onCarlifePlayingChanged(boolean z);

    void onCarlifeProgressChanged(int i);

    void onCarlifeTotalDurationChanged(int i);
}
