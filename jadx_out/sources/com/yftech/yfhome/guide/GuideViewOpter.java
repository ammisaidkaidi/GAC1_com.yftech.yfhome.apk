package com.yftech.yfhome.guide;

import android.content.Context;
import android.provider.Settings;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.yftech.yfhome.R;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class GuideViewOpter implements View.OnClickListener {
    public static final String KEEP_NO_TIP = "guide_keep_no_tip";
    private static final String TAG = "GuideViewOpter";
    private static GuideViewOpter mOpter;
    private Button btnFinish;
    private Button btnNext;
    private ImageView imageSwitcher;
    private Context mContext;
    private int[] mGuideResIds = new int[4];
    private int mGuideResIndex = 0;
    private List<TextView> mTvGuideTips;
    private View mView;
    private TextView tvCool;
    private TextView tvHeat;
    private GuideViewWindowManager windowManager;

    private GuideViewOpter(Context context) {
        this.mContext = context;
        this.mGuideResIds[0] = R.mipmap.guide_pic_1;
        this.mGuideResIds[1] = R.mipmap.guide_pic_2;
        this.mGuideResIds[2] = R.mipmap.guide_pic_3;
        this.mGuideResIds[3] = R.mipmap.guide_pic_4;
    }

    public static GuideViewOpter getInstance(Context context) {
        if (mOpter == null) {
            synchronized (GuideViewOpter.class) {
                if (mOpter == null) {
                    mOpter = new GuideViewOpter(context);
                }
            }
        }
        return mOpter;
    }

    private void makeBootWarnView() {
        StringBuilder sb = new StringBuilder();
        sb.append("makeToastView, mView is null : ");
        sb.append(this.mView == null);
        Log.e(TAG, sb.toString());
        if (this.mView == null) {
            this.mView = LayoutInflater.from(this.mContext).inflate(R.layout.view_guide, (ViewGroup) null);
            this.mTvGuideTips = new ArrayList();
            this.mTvGuideTips.add((TextView) this.mView.findViewById(R.id.tv_guide_tips_1));
            this.mTvGuideTips.add((TextView) this.mView.findViewById(R.id.tv_guide_tips_2));
            this.mTvGuideTips.add((TextView) this.mView.findViewById(R.id.tv_guide_tips_3));
            this.mTvGuideTips.add((TextView) this.mView.findViewById(R.id.tv_guide_tips_4));
            this.tvHeat = (TextView) this.mView.findViewById(R.id.tv_guide_heat);
            this.tvCool = (TextView) this.mView.findViewById(R.id.tv_guide_cool);
            this.imageSwitcher = (ImageView) this.mView.findViewById(R.id.img_switcher_guide);
            this.btnNext = (Button) this.mView.findViewById(R.id.btn_guide_next);
            this.btnNext.setOnClickListener(this);
            this.btnFinish = (Button) this.mView.findViewById(R.id.btn_guide_over);
            this.btnFinish.setOnClickListener(this);
        }
        this.imageSwitcher.setImageResource(this.mGuideResIds[this.mGuideResIndex]);
        setGuideTipsTextViewShow(this.mGuideResIndex);
        if (this.mView.getParent() == null) {
            this.windowManager.add(this.mView);
            Log.e(TAG, "makeBootWarnView: add View !!!");
        }
    }

    private void setGuideTipsTextViewShow(int i) {
        if (i == 1) {
            this.tvHeat.setVisibility(0);
            this.tvCool.setVisibility(0);
        } else if (this.tvHeat.getVisibility() == 0) {
            this.tvHeat.setVisibility(4);
            this.tvCool.setVisibility(4);
        }
        for (int i2 = 0; i2 < this.mTvGuideTips.size(); i2++) {
            TextView textView = this.mTvGuideTips.get(i2);
            if (i2 == i) {
                textView.setVisibility(0);
            } else if (textView.getVisibility() == 0) {
                textView.setVisibility(4);
            }
        }
    }

    private void setGuideViewNotTip() {
        this.mGuideResIndex = 0;
        this.btnNext.setVisibility(0);
        this.btnFinish.setText(this.mContext.getString(R.string.guide_over));
        this.btnFinish.setBackgroundResource(R.drawable.btn_guide_selected);
        this.windowManager.remove(this.mView);
        Settings.System.putInt(this.mContext.getContentResolver(), KEEP_NO_TIP, 1);
    }

    public boolean isShowing() {
        return (this.mView == null || this.mView.getParent() == null) ? false : true;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.btn_guide_next /* 2131165257 */:
                this.mGuideResIndex++;
                if (this.mGuideResIndex >= 4) {
                    setGuideViewNotTip();
                } else {
                    setGuideTipsTextViewShow(this.mGuideResIndex);
                    this.imageSwitcher.setImageResource(this.mGuideResIds[this.mGuideResIndex]);
                    if (this.mGuideResIndex == 3) {
                        this.btnFinish.setText(this.mContext.getString(R.string.guide_finish));
                        this.btnFinish.setBackgroundResource(R.drawable.btn_guide_p_selected);
                        this.btnNext.setVisibility(8);
                    }
                }
                break;
            case R.id.btn_guide_over /* 2131165258 */:
                setGuideViewNotTip();
                break;
        }
    }

    public void opt() {
        if (this.windowManager == null) {
            this.windowManager = new GuideViewWindowManager(this.mContext);
        }
        makeBootWarnView();
    }
}
