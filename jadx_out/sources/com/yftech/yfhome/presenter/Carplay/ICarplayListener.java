package com.yftech.yfhome.presenter.Carplay;

/* JADX INFO: loaded from: classes.dex */
public interface ICarplayListener {
    void onCarplayConnectChanged(int i);

    void onCarplayMusicID3Changed(String str, String str2);

    void onCarplayPlayingChanged(boolean z);

    void onCarplayProgressChanged(int i);

    void onCarplayTotalDurationChanged(int i);

    void onResourceStateChanged(boolean z);
}
