package com.example.test_platformviews

import android.content.Context
import android.graphics.Color
import android.view.Gravity
import android.view.View
import android.widget.EditText
import android.widget.FrameLayout
import android.webkit.WebView
import io.flutter.plugin.platform.PlatformView

internal class MapView(context: Context?, id: Int, creationParams: Map<String?, Any?>?) : PlatformView {
    private lateinit var webView: WebView
    private lateinit var frameLayout: FrameLayout

    override fun getView(): View {
        return frameLayout
    }

    override fun dispose() {}

    init {
        context?.let { ct ->

            webView = WebView(ct)
            webView.settings.javaScriptEnabled = true
            webView.loadData("<textarea>Rendered on a native Android view (id: $id)</textarea>", "text/html", null)

            frameLayout = FrameLayout(ct)
            val params = FrameLayout.LayoutParams(
                FrameLayout.LayoutParams.MATCH_PARENT,
                FrameLayout.LayoutParams.MATCH_PARENT)
            params.gravity = Gravity.CENTER
            frameLayout.setBackgroundColor(Color.BLUE)
            frameLayout.addView(webView, params)
        }
    }
}