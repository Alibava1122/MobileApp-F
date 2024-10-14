import 'package:flutter/material.dart';
import 'package:landing_page/app_style.dart';
import 'package:landing_page/color_style.dart';
import 'package:landing_page/footer.dart';
import 'package:landing_page/landing_page.dart';
import 'package:landing_page/navbar.dart';

class Wrapper extends StatefulWidget {
  Wrapper({
    super.key,
  });

  @override
  State<Wrapper> createState() => _WrapperState();
}

enum Logger {
  Black("30"),
  Red("31"),
  Green("32"),
  Yellow("33"),
  Blue("34"),
  Magenta("35"),
  Cyan("36"),
  White("37");

  final String code;
  const Logger(this.code);

  void log(dynamic text) =>
      print('\x1B[' + code + 'm' + text.toString() + '\x1B[0m');
}

class _WrapperState extends State<Wrapper> {
  late AppStyle appStyle;

  int selectedIndex = 0;

  @override
  void initState() {
    Logger.Green.log("Wrapper is initialising..");

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // super.build(context);

    appStyle = AppStyle(context);
    return Scaffold(
      backgroundColor: BrandColors.blueBackground,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            NavBar(
              onPressedIndex: (int i) async {
                Logger.Magenta.log('index is $i');

                setState(
                  () {
                    selectedIndex = i;
                  },
                );
              },
              selectedIndex: 0,
              role: '',
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IndexedStack(
                  index: this.selectedIndex,
                  children: [
                    SizedBox(
                      height: this.selectedIndex == 0 ? 4000 : 100,
                      child: LandingPageDesktop(),
                    ),
                  ],
                ),
                Footer(
                  onPressedIndex: (int i) async {
                    Logger.Magenta.log('index is $i');

                    setState(
                      () {
                        this.selectedIndex = i;
                      },
                    );
                  },
                  selectedIndex: this.selectedIndex,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
