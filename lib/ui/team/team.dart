import 'package:flutter/material.dart';

class Team extends StatelessWidget {
  const Team({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/images/icons/menu.png',
                    height: 28,
                    width: 28,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Text(
                      'Team Managment',
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      showModalBottomSheet(
                          useRootNavigator: true,
                          context: context,
                          builder: (context) {
                            return Container(
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(18),
                                      topRight: Radius.circular(18)),
                                  color: themeData.colorScheme.onBackground),
                              height: 430,
                              width: 500,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 24, right: 24, bottom: 24),
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
                                    Image.asset(
                                      'assets/images/icons/Outgoing_mail2.png',
                                      height: 48,
                                      width: 48,
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Text('Send Invitation',
                                        style: themeData
                                            .textTheme.headlineLarge!
                                            .copyWith(
                                                color: themeData
                                                    .colorScheme.onTertiary,
                                                fontSize: 25)),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    Text(
                                      'You are inviting someone to your project. If that person accepts your invitation, you will have access to their data in this project.',
                                      style: themeData.textTheme.bodySmall!
                                          .copyWith(
                                              fontSize: 13.3, height: 1.5),
                                      textAlign: TextAlign.center,
                                    ),
                                    const SizedBox(
                                      height: 38,
                                    ),
                                    TextField(
                                      decoration: InputDecoration(
                                          contentPadding: EdgeInsets.zero,
                                          enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  width: 1.5,
                                                  color: themeData
                                                      .colorScheme.secondary)),
                                          focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  width: 1.7,
                                                  color: themeData
                                                      .colorScheme.secondary)),
                                          label: Text('Email',
                                              style: themeData
                                                  .textTheme.bodyMedium!)),
                                    ),
                                    const SizedBox(
                                      height: 38,
                                    ),
                                    ElevatedButton(
                                        onPressed: () {},
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                                    themeData
                                                        .colorScheme.primary),
                                            shape: MaterialStateProperty.all(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            24))),
                                            minimumSize:
                                                MaterialStateProperty.all(Size(
                                                    MediaQuery.of(context)
                                                        .size
                                                        .width,
                                                    47))),
                                        child: Text(
                                          'Send',
                                          style: themeData.textTheme.titleSmall,
                                        )),
                                  ],
                                ),
                              ),
                            );
                          });
                    },
                    child: Image.asset(
                      'assets/images/icons/Outgoing_mail.png',
                      height: 28,
                      width: 28,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 48,
              ),
              Text(
                'Here are the users invited to your project. You can check their work data.',
                style: themeData.textTheme.bodySmall,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, bottom: 20),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(1000)),
                      child: Image.asset(
                        'assets/images/icons/Circle.png',
                        width: 45,
                        height: 45,
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Mohammad Meimandi',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(fontSize: 17),
                          ),
                          Text(
                            'Senior Ui/Ux Designer',
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall!
                                .copyWith(fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                    Image.asset(
                      'assets/images/icons/expandmore.png',
                      width: 30,
                      height: 30,
                    )
                  ],
                ),
              ),
              Divider(thickness: 1.5, color: themeData.colorScheme.secondary),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(1000)),
                      child: Image.asset(
                        'assets/images/icons/Circle.png',
                        width: 45,
                        height: 45,
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Mina Ekrami',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(fontSize: 17),
                          ),
                          Text(
                            'Front-End Developer',
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall!
                                .copyWith(fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                    Image.asset(
                      'assets/images/icons/expandmore.png',
                      width: 30,
                      height: 30,
                    )
                  ],
                ),
              ),
              Divider(thickness: 1.5, color: themeData.colorScheme.secondary),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(1000)),
                      child: Image.asset(
                        'assets/images/icons/Circle.png',
                        width: 45,
                        height: 45,
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Zohreh Safarinia',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(fontSize: 17),
                          ),
                          Text(
                            'Senior Social Media Marketing',
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall!
                                .copyWith(fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                    Image.asset(
                      'assets/images/icons/expandmore.png',
                      width: 30,
                      height: 30,
                    )
                  ],
                ),
              ),
              Divider(thickness: 1.5, color: themeData.colorScheme.secondary),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(1000)),
                      child: Image.asset(
                        'assets/images/icons/Circle.png',
                        width: 45,
                        height: 45,
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Sanaz Farzadi',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(fontSize: 17),
                          ),
                          Text(
                            'Front-End Developer',
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall!
                                .copyWith(fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                    Image.asset(
                      'assets/images/icons/expandmore.png',
                      width: 30,
                      height: 30,
                    )
                  ],
                ),
              ),
              Divider(thickness: 1.5, color: themeData.colorScheme.secondary),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(1000)),
                      child: Image.asset(
                        'assets/images/icons/Circle.png',
                        width: 45,
                        height: 45,
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Sahar Hamidi',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(fontSize: 17),
                          ),
                          Text(
                            'Digital Marketing Strategist',
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall!
                                .copyWith(fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                    Image.asset(
                      'assets/images/icons/expandmore.png',
                      width: 30,
                      height: 30,
                    )
                  ],
                ),
              ),
              Divider(thickness: 1.5, color: themeData.colorScheme.secondary),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(1000)),
                      child: Image.asset(
                        'assets/images/icons/Circle.png',
                        width: 45,
                        height: 45,
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Babak Ahmadi',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(fontSize: 17),
                          ),
                          Text(
                            'Back-End Web Developer',
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall!
                                .copyWith(fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                    Image.asset(
                      'assets/images/icons/expandmore.png',
                      width: 30,
                      height: 30,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 64,
              )
            ],
          ),
        ),
      )),
    );
  }
}
