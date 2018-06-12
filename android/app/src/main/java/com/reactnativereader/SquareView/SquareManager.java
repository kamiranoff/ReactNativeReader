package com.reactnativereader.SquareView;

import android.graphics.Color;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;

import com.facebook.react.uimanager.SimpleViewManager;
import com.facebook.react.uimanager.ThemedReactContext;
import com.facebook.react.uimanager.annotations.ReactProp;
import com.reactnativereader.R;

public class SquareManager extends SimpleViewManager<LinearLayout> {
    public static final String REACT_CLASS = "Square";

    private LinearLayout linearLayout;
    private TextView textView;

    @Override
    public String getName() {
        return REACT_CLASS;
    }

    @Override
    protected LinearLayout createViewInstance(ThemedReactContext reactContext) {
        linearLayout = new LinearLayout(reactContext);
        linearLayout.setBackgroundColor(Color.BLUE);
        textView = new TextView(reactContext);
        textView.setTextColor(Color.WHITE);
        linearLayout.addView(textView);
        return linearLayout;
    }

    @ReactProp(name = "text")
    public void setTextProp(View view, String prop) {
         textView.setText(prop);
    }
}
