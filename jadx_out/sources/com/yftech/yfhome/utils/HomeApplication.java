package com.yftech.yfhome.utils;

import android.app.Application;
import android.content.res.Configuration;
import android.util.Log;
import com.yftech.yfhome.presenter.MediaPresenter;
import java.util.HashSet;

/* JADX INFO: loaded from: classes.dex */
public class HomeApplication extends Application {
    private static HomeApplication mInstance;
    private final String TAG = HomeApplication.class.getSimpleName();
    private HashSet<ConfigurationChangeLisenter> mConfigurationChangeLisenters = new HashSet<>();

    public interface ConfigurationChangeLisenter {
        void onAppConfigurationChanged(Configuration configuration);
    }

    public static HomeApplication getInstance() {
        return mInstance;
    }

    @Override // android.app.Application, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        Log.i(this.TAG, "onConfigurationChanged: " + configuration.locale.getLanguage());
        for (ConfigurationChangeLisenter configurationChangeLisenter : this.mConfigurationChangeLisenters) {
            if (configurationChangeLisenter != null) {
                synchronized (this.mConfigurationChangeLisenters) {
                    configurationChangeLisenter.onAppConfigurationChanged(configuration);
                }
            }
        }
    }

    @Override // android.app.Application
    public void onCreate() {
        super.onCreate();
        mInstance = this;
    }

    @Override // android.app.Application
    public void onTerminate() {
        super.onTerminate();
        Log.i(this.TAG, "onTerminate");
        MediaPresenter.getInstance(getApplicationContext()).release();
    }

    public void registerConfigurationChangeLisenter(ConfigurationChangeLisenter configurationChangeLisenter) {
        synchronized (this.mConfigurationChangeLisenters) {
            this.mConfigurationChangeLisenters.add(configurationChangeLisenter);
        }
    }

    public void unRegisterConfigurationChangeLisenter(ConfigurationChangeLisenter configurationChangeLisenter) {
        synchronized (this.mConfigurationChangeLisenters) {
            this.mConfigurationChangeLisenters.remove(configurationChangeLisenter);
        }
    }
}
