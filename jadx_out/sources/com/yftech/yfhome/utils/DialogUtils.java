package com.yftech.yfhome.utils;

import android.app.Dialog;
import android.content.Context;
import android.view.View;
import android.view.Window;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.yftech.yfhome.R;

/* JADX INFO: loaded from: classes.dex */
public class DialogUtils extends Dialog implements View.OnClickListener {
    private TextView mCancel;
    private TextView mContent;
    private OnButtonListener mOnButtonListener;
    private TextView mSure;
    private TextView mTitle;

    public interface OnButtonListener {
        void onCancel();

        void onSure();
    }

    public DialogUtils(@NonNull Context context) {
        super(context, R.style.dialog_normal);
        setContentView(R.layout.dialog_layout);
        this.mContent = (TextView) findViewById(R.id.content);
        this.mSure = (TextView) findViewById(R.id.sure);
        this.mCancel = (TextView) findViewById(R.id.cancle);
        this.mTitle = (TextView) findViewById(R.id.tv_dialog_title);
        this.mSure.setOnClickListener(this);
        this.mCancel.setOnClickListener(this);
        Window window = getWindow();
        if (window != null) {
            window.setType(2056);
            setCanceledOnTouchOutside(false);
            setCancelable(false);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.sure) {
            if (this.mOnButtonListener != null) {
                this.mOnButtonListener.onSure();
            }
        } else {
            if (id != R.id.cancle || this.mOnButtonListener == null) {
                return;
            }
            this.mOnButtonListener.onCancel();
        }
    }

    public DialogUtils setContent(String str) {
        if (this.mContent != null) {
            this.mContent.setText(str);
        }
        if (this.mTitle != null) {
            this.mTitle.setVisibility(8);
        }
        if (this.mSure != null) {
            this.mSure.setText(R.string.sure);
        }
        if (this.mCancel != null) {
            this.mCancel.setText(R.string.cancel);
        }
        return this;
    }

    public DialogUtils setOnButtonListener(OnButtonListener onButtonListener) {
        this.mOnButtonListener = onButtonListener;
        return this;
    }

    public DialogUtils setTitleAndContentAndBtnStr(String str, String str2, String str3, String str4) {
        if (this.mTitle != null) {
            this.mTitle.setText(str);
        }
        if (this.mContent != null) {
            this.mContent.setText(str2);
        }
        if (this.mSure != null) {
            this.mSure.setText(str3);
        }
        if (this.mCancel != null) {
            this.mCancel.setText(str4);
        }
        return this;
    }
}
