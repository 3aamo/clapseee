import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
                child: Column(
                  children: [
                    Container(
                      height: 85,
                      width: 412,
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/icons/arrowback.png',
                            height: 28,
                            width: 28,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: Text(
                              'Aliasghar Davoodi',
                              style: Theme.of(context).textTheme.headlineLarge,
                            ),
                          ),
                          Image.asset(
                            'assets/images/icons/edit.png',
                            height: 28,
                            width: 28,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 4),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(1000)),
                            child: Image.asset(
                              'assets/images/icons/Circle.png',
                              width: 75,
                              height: 75,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 18,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Senior UI/UX Designer',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(
                                      fontSize: 17,
                                      color: themeData.colorScheme.tertiary,
                                      fontWeight: FontWeight.w700,
                                    )),
                            SizedBox(
                              height: 4,
                            ),
                            Text('RE79.Aliasghar@gmail.com',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(
                                      fontSize: 15,
                                      color: themeData.colorScheme.primary,
                                      fontWeight: FontWeight.w700,
                                    ))
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              const Divider(
                color: Colors.black45,
                thickness: 2.5,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 12, 24, 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              int? _value = 1;
                              return Container(
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(18),
                                        topRight: Radius.circular(18)),
                                    color: themeData.colorScheme.onBackground),
                                height: 320,
                                width: 500,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(24, 16, 24, 16),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Center(
                                        child: Image.asset(
                                          'assets/images/icons/Line 1059.png',
                                          height: 40,
                                          width: 35,
                                        ),
                                      ),
                                      Text(
                                        'Language',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyLarge,
                                      ),
                                      Row(
                                        children: [
                                          Radio(
                                              activeColor: Colors.red,
                                              value: 1,
                                              groupValue: _value,
                                              onChanged: (value) {
                                                setState(() {
                                                  _value = value;
                                                });
                                              }),
                                          SizedBox(
                                            width: 0,
                                          ),
                                          Text('English')
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Radio(
                                              activeColor: const Color.fromARGB(
                                                  255, 54, 133, 244),
                                              value: 2,
                                              groupValue: _value,
                                              onChanged: (value) {
                                                setState(() {
                                                  _value = value;
                                                });
                                              }),
                                          SizedBox(
                                            width: 0,
                                          ),
                                          Text('فارسی')
                                        ],
                                      ),
                                      Divider(
                                          thickness: 2,
                                          color:
                                              themeData.colorScheme.secondary),
                                    ],
                                  ),
                                ),
                              );
                            });
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Language',
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
                    ),
                    Text(
                      'English',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(fontSize: 14),
                    ),
                    SizedBox(
                      height: 22,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Alternate calendar',
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
                      'Persian calendar',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(fontSize: 14),
                    ),
                    SizedBox(
                      height: 22,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Start of the week',
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
                      'Monday',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(fontSize: 14),
                    ),
                    SizedBox(
                      height: 22,
                    ),
                    Divider(
                        thickness: 1.5, color: themeData.colorScheme.secondary),
                    SizedBox(
                      height: 13,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Default focus mode duration',
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
                      '30 minutes',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(fontSize: 14),
                    ),
                    SizedBox(
                      height: 22,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Theme',
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
                      'System default',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(fontSize: 14),
                    ),
                    SizedBox(
                      height: 21,
                    ),
                    Divider(
                        thickness: 1.5, color: themeData.colorScheme.secondary),
                    SizedBox(
                      height: 20,
                    ),
                    Row(children: [
                      Image.asset(
                        'assets/images/icons/logout.png',
                        width: 30,
                        height: 30,
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Text(
                        'Log out',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontSize: 17, color: themeData.colorScheme.error),
                      ),
                    ]),
                    SizedBox(
                      height: 72,
                    ),
                    Center(
                        child: Text(
                      'Clapse  -  Version 1.5.0',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(fontSize: 14),
                    ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
