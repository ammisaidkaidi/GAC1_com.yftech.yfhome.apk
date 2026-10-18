package com.yftech.yfhome.utils;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.yftech.yfhome.R;

/* JADX INFO: loaded from: classes.dex */
public class ToastUtils extends Toast {
    private static final int TYPE_IMG_HIDE = 0;
    private static final int TYPE_IMG_SHOW = 1;
    private static ImageView mToastImg;
    private static ToastUtils mToastUtils;

    public ToastUtils(Context context) {
        super(context);
    }

    public static void cancelToast() {
        if (mToastUtils != null) {
            mToastUtils.cancel();
        }
    }

    private static void initToast(Context context, int i, CharSequence charSequence, boolean z) {
        try {
            cancelToast();
            mToastUtils = new ToastUtils(context);
            View viewInflate = ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(R.layout.toast_layout, (ViewGroup) null);
            View viewFindViewById = viewInflate.findViewById(R.id.root);
            if (z) {
                viewInflate.setOnClickListener(new View.OnClickListener() { // from class: com.yftech.yfhome.utils.-$$Lambda$ToastUtils$pCAL7Nc24at_r2n9-RrwqJrJRvQ
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        ToastUtils.cancelToast();
                    }
                });
            }
            mToastImg = (ImageView) viewInflate.findViewById(R.id.toast_img);
            TextView textView = (TextView) viewInflate.findViewById(R.id.toast_text);
            viewFindViewById.setLayoutParams(new LinearLayout.LayoutParams(-1, 88));
            textView.setText(charSequence);
            mToastUtils.setView(viewInflate);
            mToastUtils.setGravity(i | 7, 0, 0);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private static void initToast(Context context, CharSequence charSequence, boolean z) {
        try {
            cancelToast();
            mToastUtils = new ToastUtils(context);
            View viewInflate = ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(R.layout.toast_layout, (ViewGroup) null);
            View viewFindViewById = viewInflate.findViewById(R.id.root);
            if (z) {
                viewInflate.setOnClickListener(new View.OnClickListener() { // from class: com.yftech.yfhome.utils.-$$Lambda$ToastUtils$_diHqU2z6JX7F2s-zFGRzU701Cg
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        ToastUtils.cancelToast();
                    }
                });
            }
            mToastImg = (ImageView) viewInflate.findViewById(R.id.toast_img);
            TextView textView = (TextView) viewInflate.findViewById(R.id.toast_text);
            viewFindViewById.setLayoutParams(new LinearLayout.LayoutParams(-1, 88));
            textView.setText(charSequence);
            mToastUtils.setView(viewInflate);
            mToastUtils.setGravity(55, 0, 0);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void showText(Context context, CharSequence charSequence) {
        showToast(context, charSequence, 0, 0);
    }

    public static void showText(Context context, CharSequence charSequence, int i) {
        showToast(context, charSequence, i, 0);
    }

    public static void showText(Context context, CharSequence charSequence, int i, int i2) {
        showToast(context, charSequence, i, i2, 0);
    }

    public static void showText(Context context, CharSequence charSequence, int i, boolean z) {
        showToast(context, charSequence, i, z ? 1 : 0);
    }

    public static void showText(Context context, CharSequence charSequence, boolean z) {
        showToast(context, charSequence, 0, z ? 1 : 0);
    }

    private static void showToast(Context context, CharSequence charSequence, int i, int i2) {
        showToast(context, charSequence, i, i2, true);
    }

    private static void showToast(Context context, CharSequence charSequence, int i, int i2, int i3) {
        showToast(context, charSequence, i, i2, i3, true);
    }

    private static void showToast(Context context, CharSequence charSequence, int i, int i2, int i3, boolean z) {
        initToast(context, i, charSequence, z);
        if (i2 == 1) {
            mToastUtils.setDuration(1);
        } else {
            mToastUtils.setDuration(0);
        }
        if (i3 == 0) {
            mToastImg.setVisibility(8);
        } else {
            mToastImg.setVisibility(0);
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(mToastImg, "rotation", 0.0f, 360.0f);
            objectAnimatorOfFloat.setRepeatMode(1);
            objectAnimatorOfFloat.setRepeatCount(-1);
            objectAnimatorOfFloat.setDuration(1000L);
            objectAnimatorOfFloat.start();
        }
        mToastUtils.show();
    }

    private static void showToast(Context context, CharSequence charSequence, int i, int i2, boolean z) {
        initToast(context, charSequence, z);
        if (i == 1) {
            mToastUtils.setDuration(1);
        } else {
            mToastUtils.setDuration(0);
        }
        if (i2 == 0) {
            mToastImg.setVisibility(8);
        } else {
            mToastImg.setVisibility(0);
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(mToastImg, "rotation", 0.0f, 360.0f);
            objectAnimatorOfFloat.setRepeatMode(1);
            objectAnimatorOfFloat.setRepeatCount(-1);
            objectAnimatorOfFloat.setDuration(1000L);
            objectAnimatorOfFloat.start();
        }
        mToastUtils.show();
    }

    @Override // android.widget.Toast
    public void cancel() {
        try {
            super.cancel();
        } catch (Exception unused) {
        }
    }

    @Override // android.widget.Toast
    public void show() {
        try {
            super.show();
        } catch (Exception unused) {
        }
    }
}
