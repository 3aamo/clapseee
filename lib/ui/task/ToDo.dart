import 'package:flutter/material.dart';

class ToDo extends StatelessWidget {
  const ToDo({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(24, 36, 24, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Daily Note',
                style: themeData.textTheme.bodySmall,
              ),
              const SizedBox(
                height: 16,
              ),
              TextField(
                style: themeData.textTheme.bodyMedium,
                decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    contentPadding: EdgeInsets.zero,
                    labelStyle: themeData.textTheme.bodyMedium!
                        .copyWith(fontWeight: FontWeight.w600),
                    label: const Text('Write a note ...'),
                    border: InputBorder.none,
                    icon: Image.asset(
                      'assets/images/icons/notes2.png',
                      height: 30,
                      width: 30,
                    )),
              ),
            ],
          ),
        ),
        const Divider(
          color: Colors.black45,
          thickness: 2.5,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
          child: Column(
            children: [
              Text(
                'Tasks to do (6)',
                style: themeData.textTheme.bodySmall,
              ),
              const SizedBox(
                height: 24,
              ),
            ],
          ),
        )
      ],
    );
  }
}
