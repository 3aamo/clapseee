import 'package:flutter/material.dart';

class NewTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(18), topRight: Radius.circular(18)),
        color: themeData.colorScheme.onBackground,
      ),
      height: 230,
      width: 400,
      child: Padding(
        padding: EdgeInsets.only(left: 24, bottom: 24, right: 24),
        child: Column(
          children: [
            Image.asset(
              'assets/images/icons/Line 1059.png',
              height: 40,
              width: 37,
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              style: themeData.textTheme.bodyMedium,
              decoration: InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.never,
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        width: 1.7, color: themeData.colorScheme.secondary)),
                labelStyle: themeData.textTheme.bodyMedium!
                    .copyWith(fontWeight: FontWeight.w500),
                label: const Text('Write a new task'),
              ),
            ),
            SizedBox(
              height: 28,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 58,
                      width: 58,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                              color: themeData.colorScheme.secondary,
                              width: 1.5)),
                      child: Center(
                        child: Image.asset(
                          'assets/images/icons/flag.png',
                          height: 28,
                          width: 28,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Container(
                      height: 58,
                      width: 58,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                              color: themeData.colorScheme.secondary,
                              width: 1.5)),
                      child: Center(
                        child: Image.asset(
                          'assets/images/icons/flag_calandar.png',
                          height: 28,
                          width: 28,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Container(
                      height: 58,
                      width: 58,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                              color: themeData.colorScheme.secondary,
                              width: 1.5)),
                      child: Center(
                        child: Image.asset(
                          'assets/images/icons/flag_FILLGRAD.png',
                          height: 28,
                          width: 28,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: themeData.colorScheme.primary),
                      child: Center(
                        child: Image.asset(
                          'assets/images/icons/send.png',
                          height: 28,
                          width: 28,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
