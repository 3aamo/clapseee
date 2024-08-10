import 'package:flutter/material.dart';

class Done extends StatelessWidget {
  const Done({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(24, 36, 24, 16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/images/icons/expand_Lmore.png',
                    height: 28,
                    width: 28,
                  ),
                  Center(
                      child: Text(
                    'July 2023',
                    style: themeData.textTheme.bodyLarge,
                  )),
                  Image.asset(
                    'assets/images/icons/expand_Rmore.png',
                    height: 28,
                    width: 28,
                  ),
                ],
              ),
              const SizedBox(
                height: 32,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 57,
                    width: 57,
                    decoration: BoxDecoration(
                        color: themeData.colorScheme.secondary,
                        borderRadius: BorderRadius.circular(18)),
                    child: Center(
                      child: Image.asset(
                        'assets/images/icons/All tasks.png',
                        height: 29,
                        width: 29,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('74',
                            style: themeData.textTheme.displaySmall!.copyWith(
                                fontSize: 26,
                                color: themeData.colorScheme.onTertiary)),
                        Text(
                          'All Tasks',
                          style: themeData.textTheme.bodySmall,
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 165,
                    child: Text('Tasks to do (not done): 25 Items',
                        style: themeData.textTheme.bodySmall!
                            .copyWith(height: 1.5)),
                  )
                ],
              ),
              const SizedBox(
                height: 32,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 57,
                    width: 57,
                    decoration: BoxDecoration(
                        color: themeData.colorScheme.secondary,
                        borderRadius: BorderRadius.circular(18)),
                    child: Center(
                      child: Image.asset(
                        'assets/images/icons/task_done.png',
                        height: 29,
                        width: 29,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('55',
                            style: themeData.textTheme.displaySmall!.copyWith(
                                fontSize: 26,
                                color: themeData.colorScheme.onTertiary)),
                        Text(
                          'Tasks done',
                          style: themeData.textTheme.bodySmall,
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 170,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 22),
                      child: Text(
                          'New tasks: 18 items (Out of 74 tasks, 18 have been created this month)',
                          style: themeData.textTheme.bodySmall!),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        const Divider(
          color: Colors.black45,
          thickness: 2.5,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(24, 24, 24, 24),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Daily Note  /  Friday, July 25',
                    style: themeData.textTheme.bodySmall,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/icons/expand_Lmore2.png',
                        height: 22,
                        width: 22,
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Text('8/23',
                          style: themeData.textTheme.bodySmall!
                              .copyWith(fontSize: 15)),
                      const SizedBox(
                        width: 16,
                      ),
                      Image.asset(
                        'assets/images/icons/expand_Rmore2.png',
                        height: 22,
                        width: 22,
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/icons/notes2.png',
                    height: 30,
                    width: 30,
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Container(
                    width: 317,
                    child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
                        style: themeData.textTheme.bodySmall!
                            .copyWith(height: 1.5)),
                  )
                ],
              )
            ],
          ),
        ),
        const Divider(
          color: Colors.black45,
          thickness: 2.5,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(24, 24, 24, 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Tasks done (55)',
                style: themeData.textTheme.bodySmall,
              )
            ],
          ),
        )
      ],
    );
  }
}
