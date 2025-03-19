import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

const double bigFontSize = 44;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo AA',
      theme: ThemeData(
        fontFamily: 'Lato',
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 0, 0, 0),
        ),
      ),
      home: const MyHomePage(title: 'Bestest Portfolio'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<void> _launchInBrowser(Uri url) async {
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(195, 233, 255, 1),
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        title: Row(
          children: [
            Text(widget.title, style: TextStyle(fontWeight: FontWeight.w600)),
            Spacer(),
            Icon(Icons.heart_broken, color: Color.fromRGBO(147, 58, 138, 1)),
          ],
        ),
      ),
      body: Center(
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(24),
                  child: CircleAvatar(
                    radius: 140, // Image radius
                    backgroundImage: AssetImage('assets/images/wwe.jpeg'),
                  ),
                ),
                const Text(
                  'Super Duper Awesome Portfolio',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                const Text(
                  'Hi I\'m',
                  style: TextStyle(
                    fontSize: bigFontSize,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const Text(
                  'Yem Daro',
                  style: TextStyle(
                    fontSize: bigFontSize,
                    fontWeight: FontWeight.w900,
                    color: Color.fromRGBO(0, 78, 157, 0.988),
                  ),
                ),
                const Text(
                  'Software',
                  style: TextStyle(
                    fontSize: bigFontSize,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const Text(
                  'Developer',
                  style: TextStyle(
                    fontSize: bigFontSize,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: const Text(
                    'Professional doomscroller of youtube shorts and instagram reels. Please contact for work :D',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.w300, fontSize: 16),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 4, 20, 4),
                  child: Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueAccent,
                            foregroundColor: Colors.white,
                          ),
                          onPressed:
                              () => setState(
                                () => _launchInBrowser(
                                  Uri.parse(
                                    'https://www.facebook.com/daro.yem9/',
                                  ),
                                ),
                              ),
                          child: Text(
                            'Hire me',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 4, 20, 4),
                  child: Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.blueAccent,
                          ),
                          onPressed: () {},
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "Download CV",
                                  style: TextStyle(
                                    color: Colors.blueAccent,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                WidgetSpan(
                                  child: Icon(
                                    Icons.download,
                                    size: 14,
                                    color: Colors.blueAccent,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
