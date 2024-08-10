import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

class StartBefore extends StatefulWidget {
  @override
  State<StartBefore> createState() => _StartBeforeState();
}

class _StartBeforeState extends State<StartBefore> {
  var hour = 5;
  var minute = 30;
  var second = 00;
  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(18), topRight: Radius.circular(18)),
        color: themeData.colorScheme.onBackground,
      ),
      height: 700,
      width: 700,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 345),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 125),
                  child: Text('HR',
                      style: themeData.textTheme.bodyLarge!.copyWith(
                          color: themeData.colorScheme.primary, fontSize: 12)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 106),
                  child: Text('MIN',
                      style: themeData.textTheme.bodyLarge!.copyWith(
                          color: themeData.colorScheme.primary, fontSize: 12)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 101),
                  child: Text('SEC',
                      style: themeData.textTheme.bodyLarge!.copyWith(
                          color: themeData.colorScheme.primary, fontSize: 12)),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24, bottom: 24, right: 24),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/icons/Line 1059.png',
                  height: 40,
                  width: 37,
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  'What time did you start work?',
                  style: themeData.textTheme.headlineSmall,
                ),
                const SizedBox(
                  height: 22,
                ),
                Divider(
                  thickness: 1.5,
                  color: themeData.colorScheme.secondary,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/images/icons/expand_Lmore.png',
                      height: 28,
                      width: 28,
                    ),
                    Center(
                        child: Text('Wednesday, August 2 (Today)',
                            style: themeData.textTheme.headlineSmall!.copyWith(
                                color: themeData.colorScheme.primary,
                                fontSize: 16))),
                    Image.asset(
                      'assets/images/icons/expand_Rmore.png',
                      height: 28,
                      width: 28,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Divider(
                  thickness: 1.5,
                  color: themeData.colorScheme.secondary,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      NumberPicker(
                        minValue: 0,
                        maxValue: 12,
                        zeroPad: true,
                        infiniteLoop: true,
                        itemWidth: 85,
                        itemHeight: 110,
                        value: hour,
                        onChanged: (value) {
                          setState(() {
                            hour = value;
                          });
                        },
                        textStyle: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w700,
                            color: themeData.colorScheme.onSurface,
                            fontSize: 24),
                        selectedTextStyle: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w900,
                            color: themeData.colorScheme.primary,
                            fontSize: 45),
                        decoration: BoxDecoration(
                            border: Border(
                                top: BorderSide(
                                    color: themeData.colorScheme.secondary,
                                    width: 1.5),
                                bottom: BorderSide(
                                    color: themeData.colorScheme.secondary,
                                    width: 1.5))),
                      ),
                      NumberPicker(
                        minValue: 0,
                        maxValue: 59,
                        zeroPad: true,
                        infiniteLoop: true,
                        itemWidth: 85,
                        itemHeight: 110,
                        value: minute,
                        onChanged: (value) {
                          setState(() {
                            minute = value;
                          });
                        },
                        textStyle: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w700,
                            color: themeData.colorScheme.onSurface,
                            fontSize: 24),
                        selectedTextStyle: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w900,
                            color: themeData.colorScheme.primary,
                            fontSize: 45),
                        decoration: BoxDecoration(
                            border: Border(
                                top: BorderSide(
                                    color: themeData.colorScheme.secondary,
                                    width: 1.5),
                                bottom: BorderSide(
                                    color: themeData.colorScheme.secondary,
                                    width: 1.5))),
                      ),
                      NumberPicker(
                        minValue: 0,
                        maxValue: 59,
                        zeroPad: true,
                        infiniteLoop: true,
                        itemWidth: 85,
                        itemHeight: 110,
                        value: second,
                        onChanged: (value) {
                          setState(() {
                            second = value;
                          });
                        },
                        textStyle: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w700,
                            color: themeData.colorScheme.onSurface,
                            fontSize: 24),
                        selectedTextStyle: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w900,
                            color: themeData.colorScheme.primary,
                            fontSize: 45),
                        decoration: BoxDecoration(
                            border: Border(
                                top: BorderSide(
                                    color: themeData.colorScheme.secondary,
                                    width: 1.5),
                                bottom: BorderSide(
                                    color: themeData.colorScheme.secondary,
                                    width: 1.5))),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 9,
                ),
                ElevatedButton.icon(
                  icon: const Icon(
                    Icons.play_arrow,
                    size: 20,
                    color: Colors.black,
                  ),
                  label: Text(
                    'Resume',
                    style: themeData.textTheme.titleSmall,
                  ),
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          themeData.colorScheme.primary),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24))),
                      minimumSize: MaterialStateProperty.all(
                          Size(MediaQuery.of(context).size.width, 47))),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
