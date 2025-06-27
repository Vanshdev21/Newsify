import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart'; // ✅ Correct import

class ArticleWeb extends StatefulWidget {
  final String url;
  ArticleWeb({super.key, required this.url});

  @override
  State<ArticleWeb> createState() => _ArticleWebState();
}

class _ArticleWebState extends State<ArticleWeb> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse(widget.url));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              "News",
              style: TextStyle(
                color: Color(0xFF3280ef),
                fontSize: 30,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              "ify",
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: WebViewWidget(controller: _controller),
    );
  }
}
