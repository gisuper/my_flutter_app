package com.example.my_flutter_app;

import android.os.Bundle;
import io.flutter.app.FlutterActivity;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugins.GeneratedPluginRegistrant;

public class MainActivity extends FlutterActivity {
  //1.通道名称
  private static final String CHANNEL = "sample.flutter.io/data";

  @Override
  protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);

    new MethodChannel(getFlutterView(), CHANNEL).setMethodCallHandler(new MethodChannel.MethodCallHandler() {
      @Override
      public void onMethodCall(MethodCall call, MethodChannel.Result result) {
        //3.处理一个平台方法data 和在平台上invokeMethod(xxxx)对应
        if (call.method.equals("data")) {
          int data = getData();
          result.success(data);
        } else {
          result.notImplemented();
        }
      }
    });

    GeneratedPluginRegistrant.registerWith(this);
  }

  public int getData() {
    return 99;
  }
}
