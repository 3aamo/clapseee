import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/task/NewTask.dart';
import 'package:flutter_application_1/ui/task/ToDo.dart';
import 'package:flutter_application_1/ui/task/done.dart';

class Task extends StatefulWidget {
  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  static const int todo = 1;
  static const int done = 0;
  int selectedTabIndex = done;

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
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
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Text(
                            'Tasks',
                            style: Theme.of(context).textTheme.headlineLarge,
                          ),
                        ),
                        InkWell(
                          onTap: () => showModalBottomSheet(
                              context: context,
                              builder: (context) {
                                return NewTask();
                              }),
                          child: Image.asset(
                            'assets/images/icons/add_circle.png',
                            height: 28,
                            width: 28,
                          ),
                        )
                      ],
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
                                    color: selectedTabIndex == todo
                                        ? themeData.colorScheme.background
                                        : themeData
                                            .colorScheme.primaryContainer,
                                    borderRadius: BorderRadius.circular(16)),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    TextButton(
                                      onPressed: () {
                                        setState(() {
                                          selectedTabIndex = todo;
                                        });
                                      },
                                      child: Text(
                                        'To Do',
                                        style: themeData.textTheme.bodyMedium!
                                            .copyWith(
                                                fontWeight: FontWeight.w600,
                                                color: selectedTabIndex == todo
                                                    ? themeData
                                                        .colorScheme.primary
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
                                      color: selectedTabIndex == done
                                          ? themeData.colorScheme.background
                                          : themeData
                                              .colorScheme.primaryContainer,
                                      borderRadius: BorderRadius.circular(16)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      TextButton(
                                        onPressed: () {
                                          setState(() {
                                            selectedTabIndex = done;
                                          });
                                        },
                                        child: Text('Done',
                                            style: themeData
                                                .textTheme.bodyMedium!
                                                .copyWith(
                                                    fontWeight: FontWeight.w600,
                                                    color: selectedTabIndex ==
                                                            done
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
                  ],
                ),
              ),
              selectedTabIndex == todo ? ToDo() : Done()
            ],
          ),
        ),
      ),
    );
  }
}
