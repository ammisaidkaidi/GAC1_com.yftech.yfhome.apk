package com.yftech.yfhome.guide;

import android.content.Context;
import android.view.View;
import android.view.WindowManager;

/* JADX INFO: loaded from: classes.dex */
public class GuideViewWindowManager {
    private static final String TAG = "GuideViewWindowManager";
    private Context mContext;
    private WindowManager.LayoutParams mLayoutParams;
    private WindowManager mWindowManager;

    public GuideViewWindowManager(Context context) {
        this.mContext = context;
        this.mWindowManager = (WindowManager) context.getSystemService("window");
        initLayoutParams();
    }

    private void initLayoutParams() {
        this.mLayoutParams = new WindowManager.LayoutParams();
        this.mLayoutParams.type = 2053;
        this.mLayoutParams.format = 1;
        this.mLayoutParams.flags = 40;
        this.mLayoutParams.flags |= 16777216;
        this.mLayoutParams.gravity = 48;
        this.mLayoutParams.setTitle("GuideView");
        this.mLayoutParams.packageName = this.mContext.getPackageName();
        this.mLayoutParams.width = -1;
        this.mLayoutParams.height = -1;
    }

    public void add(View view) {
        if (view != null && view.getParent() != null) {
            this.mWindowManager.removeView(view);
        }
        this.mWindowManager.addView(view, this.mLayoutParams);
    }

    public void remove(View view) {
        if (view == null || view.getParent() == null) {
            return;
        }
        this.mWindowManager.removeView(view);
    }
}
