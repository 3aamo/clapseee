import 'package:flutter/material.dart';

class FocusDuration extends StatefulWidget {
  @override
  State<FocusDuration> createState() => _FocusDurationState();
}

class _FocusDurationState extends State<FocusDuration> {
  int _count = 30;
  void _incrementCount() {
    setState(() {
      _count++;
    });
  }

  void _decrementCount() {
    setState(() {
      _count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(18), topRight: Radius.circular(18)),
        color: themeData.colorScheme.onBackground,
      ),
      height: 280,
      width: 700,
      child: Padding(
        padding: const EdgeInsets.only(left: 24, bottom: 24, right: 24),
        child: Column(
          children: [
            Image.asset(
              'assets/images/icons/Line 1059.png',
              height: 40,
              width: 37,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Default focus mode duration',
              style: themeData.textTheme.headlineSmall,
            ),
            const SizedBox(
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: _incrementCount,
                  child: Container(
                    height: 55,
                    width: 90,
                    decoration: BoxDecoration(
                        color: themeData.colorScheme.secondary,
                        borderRadius: BorderRadius.circular(30)),
                    child: Icon(
                      Icons.add,
                      color: themeData.colorScheme.primary,
                    ),
                  ),
                ),
                Text('${_count} minutes',
                    style: themeData.textTheme.headlineLarge!
                        .copyWith(color: themeData.colorScheme.onTertiary)),
                InkWell(
                  onTap: _decrementCount,
                  child: Container(
                    height: 55,
                    width: 90,
                    decoration: BoxDecoration(
                        color: themeData.colorScheme.secondary,
                        borderRadius: BorderRadius.circular(30)),
                    child: Icon(
                      Icons.remove,
                      color: themeData.colorScheme.primary,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton.icon(
              icon: const Icon(
                Icons.play_arrow,
                size: 20,
                color: Colors.black,
              ),
              label: Text(
                'Start Focus',
                style: themeData.textTheme.titleSmall,
              ),
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(themeData.colorScheme.primary),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24))),
                  minimumSize: MaterialStateProperty.all(
                      Size(MediaQuery.of(context).size.width, 47))),
            ),
          ],
        ),
      ),
    );
  }
}
