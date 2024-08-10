import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/auth/recoverycode.dart';

class Export extends StatefulWidget {
  @override
  State<Export> createState() => _ExportState();
}

class _ExportState extends State<Export> {
  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => const Verification())));
                    },
                    child: Image.asset(
                      'assets/images/icons/arrowback.png',
                      height: 28,
                      width: 28,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            Center(
              child: Text(
                'Export',
                style:
                    themeData.textTheme.headlineLarge!.copyWith(fontSize: 33),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Report date',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(fontSize: 17),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Image.asset(
                    'assets/images/icons/expandmore.png',
                    width: 30,
                    height: 30,
                  ),
                )
              ],
            ),
            Text(
              'This month: 1 April 2023 - 30 April 2023',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(fontSize: 14),
            ),
            SizedBox(
              height: 36,
            ),
            Divider(
              thickness: 1.5,
              color: themeData.colorScheme.secondary,
            ),
          ],
        ),
      )),
    );
  }
}
