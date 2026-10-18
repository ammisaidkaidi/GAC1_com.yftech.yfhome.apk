package com.yftech.yfhome.utils;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Shader;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.AttributeSet;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import com.yftech.yfhome.BuildConfig;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"AppCompatCustomView"})
public class MarqueeTextView extends TextView {
    static LinearGradient linearGradient;
    private float mCoordinateX;
    private Handler mHandler;
    private boolean mStopMarquee;
    private String mText;
    private float mTextWidth;

    public MarqueeTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mHandler = new Handler(Looper.getMainLooper()) { // from class: com.yftech.yfhome.utils.MarqueeTextView.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (MarqueeTextView.this.mTextWidth < MarqueeTextView.this.getWidth()) {
                    MarqueeTextView.this.mHandler.removeCallbacksAndMessages(null);
                    return;
                }
                if (message.what == 0) {
                    if (Math.abs(MarqueeTextView.this.mCoordinateX) > MarqueeTextView.this.mTextWidth + 25.0f) {
                        MarqueeTextView.this.mCoordinateX = 0.0f;
                        MarqueeTextView.this.invalidate();
                        if (!MarqueeTextView.this.mStopMarquee) {
                            sendEmptyMessageDelayed(0, 2000L);
                        }
                    } else if (MarqueeTextView.this.mCoordinateX == 0.0f) {
                        MarqueeTextView.this.mHandler.postDelayed(new Runnable() { // from class: com.yftech.yfhome.utils.MarqueeTextView.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                MarqueeTextView.this.mCoordinateX -= 1.0f;
                                MarqueeTextView.this.invalidate();
                                if (MarqueeTextView.this.mStopMarquee) {
                                    return;
                                }
                                sendEmptyMessageDelayed(0, 30L);
                            }
                        }, 1000L);
                    } else {
                        MarqueeTextView.this.mCoordinateX -= 1.0f;
                        MarqueeTextView.this.invalidate();
                        if (!MarqueeTextView.this.mStopMarquee) {
                            sendEmptyMessageDelayed(0, 30L);
                        }
                    }
                }
                super.handleMessage(message);
            }
        };
        linearGradient = new LinearGradient(0.0f, 0.0f, getWidth(), 0.0f, new int[]{ViewCompat.MEASURED_SIZE_MASK, -1, -1, ViewCompat.MEASURED_SIZE_MASK}, new float[]{0.0f, 0.1f, 0.9f, 1.0f}, Shader.TileMode.CLAMP);
    }

    @Override // android.view.View
    public boolean isFocused() {
        return true;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        this.mStopMarquee = false;
        if (this.mText != null && !BuildConfig.FLAVOR.equals(this.mText) && this.mTextWidth > getWidth()) {
            this.mHandler.sendEmptyMessageDelayed(0, 2000L);
        }
        super.onAttachedToWindow();
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        this.mStopMarquee = true;
        if (this.mHandler.hasMessages(0)) {
            this.mHandler.removeMessages(0);
        }
        super.onDetachedFromWindow();
    }

    @Override // android.widget.TextView, android.view.View
    @SuppressLint({"DrawAllocation"})
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.mText == null || BuildConfig.FLAVOR.equals(this.mText)) {
            return;
        }
        if (this.mTextWidth < getWidth()) {
            this.mCoordinateX = 0.0f;
        }
        canvas.drawText(this.mText, this.mCoordinateX, 19.0f, getPaint());
    }

    public void setText(String str) {
        this.mText = str;
        this.mCoordinateX = 0.0f;
        if (this.mText == null) {
            this.mTextWidth = 0.0f;
        } else {
            this.mTextWidth = getPaint().measureText(this.mText);
        }
        invalidate();
        if (this.mHandler.hasMessages(0)) {
            this.mHandler.removeMessages(0);
        }
        this.mHandler.sendEmptyMessageDelayed(0, 2000L);
    }
}
