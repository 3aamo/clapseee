import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/auth/forgetpass.dart';
import 'package:flutter_application_1/ui/auth/newpass.dart';

class Verification extends StatelessWidget {
  const Verification({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => const Forgetpass())));
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
                'Recovery Code',
                style:
                    themeData.textTheme.headlineLarge!.copyWith(fontSize: 33),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              'Please check your email. We sent the recovery code to your email (re79.Aliasghar@gmail.com). If you havent received it yet, check your spam folder',
              style: themeData.textTheme.bodyMedium!.copyWith(fontSize: 14),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 58,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 9, right: 9),
              child: Row(
                children: [
                  Container(
                    height: 77,
                    width: 77,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: themeData.colorScheme.onPrimary, width: 1.2),
                        borderRadius: BorderRadius.circular(16)),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Container(
                    height: 77,
                    width: 77,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: themeData.colorScheme.onPrimary, width: 1.2),
                        borderRadius: BorderRadius.circular(16)),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Container(
                    height: 77,
                    width: 77,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: themeData.colorScheme.onPrimary, width: 1.2),
                        borderRadius: BorderRadius.circular(16)),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Container(
                    height: 77,
                    width: 77,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: themeData.colorScheme.onPrimary, width: 1.2),
                        borderRadius: BorderRadius.circular(16)),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => const NewPassword())));
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        themeData.colorScheme.primary),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24))),
                    minimumSize: MaterialStateProperty.all(
                        Size(MediaQuery.of(context).size.width, 47))),
                child: Text(
                  'Submit',
                  style: themeData.textTheme.titleSmall,
                )),
          ],
        ),
      )),
    );
  }
}
