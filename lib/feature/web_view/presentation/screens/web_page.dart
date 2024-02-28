import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebPage extends StatelessWidget {
  String? url;
  WebPage(this.url, {super.key});

  WebViewController? webViewController;

  @override
  Widget build(BuildContext context) {
    webView();
    return Scaffold(
      appBar: AppBar(),
      body: WebViewWidget(
        controller: webViewController!,
      ),
    );
  }

  webView() {
    webViewController = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))

      ..loadRequest(Uri.parse(url!));
  }
}
