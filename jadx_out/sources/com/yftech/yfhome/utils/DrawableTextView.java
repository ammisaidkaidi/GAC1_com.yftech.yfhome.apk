package com.yftech.yfhome.utils;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatTextView;
import com.yftech.yfhome.R;

/* JADX INFO: loaded from: classes.dex */
public class DrawableTextView extends AppCompatTextView {
    private final int LEFT;
    private final int RIGHT;
    private Drawable drawableBottom;
    private int drawableHeight;
    private Drawable drawableLeft;
    private Drawable drawableRight;
    private Drawable drawableTop;
    private int drawableWidth;
    private OnDrawableLeftListener leftListener;
    private OnDrawableRightListener rightListener;

    public interface OnDrawableLeftListener {
        void onLeftClick(View view);
    }

    public interface OnDrawableRightListener {
        void onRightClick(View view);
    }

    public DrawableTextView(Context context) {
        this(context, null);
    }

    public DrawableTextView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public DrawableTextView(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.drawableLeft = null;
        this.drawableTop = null;
        this.drawableRight = null;
        this.drawableBottom = null;
        this.LEFT = 0;
        this.RIGHT = 2;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.DrawableTextView);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i2 = 0; i2 < indexCount; i2++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i2);
            switch (index) {
                case 0:
                    this.drawableBottom = typedArrayObtainStyledAttributes.getDrawable(index);
                    break;
                case 1:
                    this.drawableHeight = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
                    break;
                case 2:
                    this.drawableLeft = typedArrayObtainStyledAttributes.getDrawable(index);
                    break;
                case 3:
                    this.drawableRight = typedArrayObtainStyledAttributes.getDrawable(index);
                    break;
                case 4:
                    this.drawableTop = typedArrayObtainStyledAttributes.getDrawable(index);
                    break;
                case 5:
                    this.drawableWidth = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
                    break;
            }
        }
        typedArrayObtainStyledAttributes.recycle();
        if (this.drawableLeft != null) {
            this.drawableLeft.setBounds(0, 0, this.drawableWidth, this.drawableHeight);
        }
        if (this.drawableRight != null) {
            this.drawableRight.setBounds(0, 0, this.drawableWidth, this.drawableHeight);
        }
        if (this.drawableTop != null) {
            this.drawableTop.setBounds(0, 0, this.drawableWidth, this.drawableHeight);
        }
        if (this.drawableBottom != null) {
            this.drawableBottom.setBounds(0, 0, this.drawableWidth, this.drawableHeight);
        }
        setCompoundDrawables(this.drawableLeft, this.drawableTop, this.drawableRight, this.drawableBottom);
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 1) {
            Drawable drawable = getCompoundDrawables()[0];
            if (drawable != null && motionEvent.getRawX() <= getLeft() + drawable.getBounds().width() && this.leftListener != null) {
                this.leftListener.onLeftClick(this);
            }
            Drawable drawable2 = getCompoundDrawables()[2];
            if (drawable2 == null || motionEvent.getRawX() < getRight() - drawable2.getBounds().width() || this.leftListener == null) {
                performClick();
            } else {
                this.rightListener.onRightClick(this);
            }
        }
        return true;
    }

    public void setOnDrawableLeftListener(OnDrawableLeftListener onDrawableLeftListener) {
        this.leftListener = onDrawableLeftListener;
    }

    public void setOnDrawableRightListener(OnDrawableRightListener onDrawableRightListener) {
        this.rightListener = onDrawableRightListener;
    }
}
