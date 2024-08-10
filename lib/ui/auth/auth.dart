import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/auth/forgetpass.dart';
import 'package:flutter_application_1/ui/root2.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  static const int loginTab = 1;
  static const int signUpTab = 0;
  int selectedTabIndex = signUpTab;

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                const SizedBox(
                  height: 55,
                ),
                Center(
                  child: Text(
                    'Welcome to Clapse',
                    style: themeData.textTheme.headlineLarge!
                        .copyWith(fontSize: 33),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Container(
                  height: 53,
                  width: 450,
                  decoration: ShapeDecoration(
                    color: themeData.colorScheme.primaryContainer,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(2.2),
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                                color: selectedTabIndex == signUpTab
                                    ? themeData.colorScheme.background
                                    : themeData.colorScheme.primaryContainer,
                                borderRadius: BorderRadius.circular(16)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TextButton(
                                  onPressed: () {
                                    setState(() {
                                      selectedTabIndex = signUpTab;
                                    });
                                  },
                                  child: Text(
                                    'Sign Up',
                                    style: themeData.textTheme.bodyLarge!
                                        .copyWith(
                                            color: selectedTabIndex == signUpTab
                                                ? themeData.colorScheme.primary
                                                : themeData.colorScheme
                                                    .secondaryContainer),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.all(2.2),
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                  color: selectedTabIndex == loginTab
                                      ? themeData.colorScheme.background
                                      : themeData.colorScheme.primaryContainer,
                                  borderRadius: BorderRadius.circular(16)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      setState(() {
                                        selectedTabIndex = loginTab;
                                      });
                                    },
                                    child: Text('Log In',
                                        style: themeData.textTheme.bodyMedium!
                                            .copyWith(
                                                fontWeight: FontWeight.w400,
                                                color:
                                                    selectedTabIndex == loginTab
                                                        ? themeData
                                                            .colorScheme.primary
                                                        : themeData.colorScheme
                                                            .secondaryContainer)),
                                  ),
                                ],
                              ),
                            ),
                          ))
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                selectedTabIndex == signUpTab
                    ? _Signup(themeData: themeData)
                    : _Login(themeData: themeData),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Signup extends StatelessWidget {
  const _Signup({
    super.key,
    required this.themeData,
  });

  final ThemeData themeData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
              label: Text('Full name',
                  style:
                      themeData.textTheme.bodyMedium!.copyWith(fontSize: 17))),
        ),
        const SizedBox(
          height: 51,
        ),
        TextField(
          decoration: InputDecoration(
              contentPadding: const EdgeInsets.only(bottom: 10),
              enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                      width: 1.7, color: themeData.colorScheme.onPrimary)),
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                width: 1.7,
                color: themeData.colorScheme.onPrimary,
              )),
              label: Text('Email',
                  style:
                      themeData.textTheme.bodyMedium!.copyWith(fontSize: 17))),
        ),
        const SizedBox(
          height: 50,
        ),
        TextField(
          decoration: InputDecoration(
              contentPadding: const EdgeInsets.only(bottom: 10),
              enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                      width: 1.7, color: themeData.colorScheme.onPrimary)),
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                width: 1.7,
                color: themeData.colorScheme.onPrimary,
              )),
              label: Text('Password',
                  style:
                      themeData.textTheme.bodyMedium!.copyWith(fontSize: 17))),
        ),
        const SizedBox(
          height: 45,
        ),
        ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => const NavigationMenu())));
            },
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(themeData.colorScheme.primary),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24))),
                minimumSize: MaterialStateProperty.all(
                    Size(MediaQuery.of(context).size.width, 47))),
            child: Text(
              'Create Account',
              style: themeData.textTheme.titleSmall,
            )),
        const SizedBox(
          height: 8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Do you have an account?',
              style: themeData.textTheme.bodyMedium,
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => const AuthScreen())));
                },
                style: TextButton.styleFrom(padding: EdgeInsets.zero),
                child: Text('Log In',
                    style: themeData.textTheme.bodyLarge!
                        .copyWith(color: themeData.colorScheme.primary))),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Container(
                width: 152,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 0.3,
                      strokeAlign: BorderSide.strokeAlignCenter,
                      color: themeData.colorScheme.onPrimary,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text(
                'or',
                style: themeData.textTheme.bodyMedium!.copyWith(fontSize: 14),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Container(
                width: 157,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 0.3,
                      strokeAlign: BorderSide.strokeAlignCenter,
                      color: themeData.colorScheme.onPrimary,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton.icon(
            onPressed: () {},
            icon: Image.asset(
              'assets/images/icons/google.png',
              width: 24,
              height: 24,
            ),
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(themeData.colorScheme.surface),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24))),
                minimumSize: MaterialStateProperty.all(
                    Size(MediaQuery.of(context).size.width, 47))),
            label: Text(
              'Sign Up with Google',
              style: themeData.textTheme.titleSmall,
            )),
        const SizedBox(
          height: 40,
        ),
        Text(
          'Having an account on Claps means that you have read and accepted the Terms of Service and Privacy Policy.',
          style: themeData.textTheme.bodyMedium!.copyWith(fontSize: 14),
        )
      ],
    );
  }
}

class _Login extends StatelessWidget {
  const _Login({
    super.key,
    required this.themeData,
  });

  final ThemeData themeData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
                  style:
                      themeData.textTheme.bodyMedium!.copyWith(fontSize: 17))),
        ),
        const SizedBox(
          height: 51,
        ),
        TextField(
          decoration: InputDecoration(
              contentPadding: const EdgeInsets.only(bottom: 10),
              enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                      width: 1.7, color: themeData.colorScheme.onPrimary)),
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                width: 1.7,
                color: themeData.colorScheme.onPrimary,
              )),
              label: Text('Password',
                  style:
                      themeData.textTheme.bodyMedium!.copyWith(fontSize: 17))),
        ),
        const SizedBox(
          height: 4,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => const Forgetpass())));
                },
                style: TextButton.styleFrom(padding: EdgeInsets.zero),
                child: Text('Forget Password?',
                    style: themeData.textTheme.bodyLarge!.copyWith(
                        fontSize: 14, color: themeData.colorScheme.primary))),
          ],
        ),
        const SizedBox(
          height: 40,
        ),
        ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => const NavigationMenu())));
            },
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(themeData.colorScheme.primary),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24))),
                minimumSize: MaterialStateProperty.all(
                    Size(MediaQuery.of(context).size.width, 47))),
            child: Text(
              'Log In',
              style: themeData.textTheme.titleSmall,
            )),
        const SizedBox(
          height: 8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Dont have an account?',
              style: themeData.textTheme.bodyMedium,
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => const AuthScreen())));
                },
                style: TextButton.styleFrom(padding: EdgeInsets.zero),
                child: Text('Sign up',
                    style: themeData.textTheme.bodyLarge!
                        .copyWith(color: themeData.colorScheme.primary))),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Container(
                width: 152,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 0.3,
                      strokeAlign: BorderSide.strokeAlignCenter,
                      color: themeData.colorScheme.onPrimary,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text(
                'or',
                style: themeData.textTheme.bodyMedium!.copyWith(fontSize: 14),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Container(
                width: 157,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 0.3,
                      strokeAlign: BorderSide.strokeAlignCenter,
                      color: themeData.colorScheme.onPrimary,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton.icon(
            onPressed: () {},
            icon: Image.asset(
              'assets/images/icons/google.png',
              width: 24,
              height: 24,
            ),
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(themeData.colorScheme.surface),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24))),
                minimumSize: MaterialStateProperty.all(
                    Size(MediaQuery.of(context).size.width, 47))),
            label: Text(
              'Log In with Google',
              style: themeData.textTheme.titleSmall,
            )),
        const SizedBox(
          height: 96,
        ),
        Text(
          'Having an account on Claps means that you have read and accepted the Terms of Service and Privacy Policy.',
          style: themeData.textTheme.bodyMedium!.copyWith(fontSize: 14),
        )
      ],
    );
  }
}
