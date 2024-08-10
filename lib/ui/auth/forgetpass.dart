import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/auth/auth.dart';

import 'package:flutter_application_1/ui/auth/recoverycode.dart';

class Forgetpass extends StatelessWidget {
  const Forgetpass({super.key});

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
                              builder: ((context) => const AuthScreen())));
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
                'Forget Password',
                style:
                    themeData.textTheme.headlineLarge!.copyWith(fontSize: 33),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              'We will send a recovery code to your email',
              style: themeData.textTheme.bodyMedium!.copyWith(fontSize: 14),
            ),
            const SizedBox(
              height: 62,
            ),
            TextField(
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(bottom: 10),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          width: 1.5, color: themeData.colorScheme.onPrimary)),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                    width: 1.7,
                    color: themeData.colorScheme.onPrimary,
                  )),
                  label: Text('Email',
                      style: themeData.textTheme.bodyMedium!
                          .copyWith(fontSize: 17))),
            ),
            const SizedBox(
              height: 54,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => const Verification())));
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        themeData.colorScheme.primary),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24))),
                    minimumSize: MaterialStateProperty.all(
                        Size(MediaQuery.of(context).size.width, 47))),
                child: Text(
                  'Send Recovery Code',
                  style: themeData.textTheme.titleSmall,
                )),
          ],
        ),
      )),
    );
  }
}
