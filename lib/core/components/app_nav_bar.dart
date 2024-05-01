import 'package:cofood/bloc/cubit/nav_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../style/app_colors.dart';

class AppNavBar extends StatelessWidget {
  Function homeFunction;
  Function profileFunction;
  Function settingFunction;
  Function chatFunction;
  late List<Function> actions;
  AppNavBar(
      {required this.homeFunction,
      required this.profileFunction,
      required this.settingFunction,
      required this.chatFunction,
      Key? key})
      : super(key: key) {
    actions = [homeFunction, profileFunction, settingFunction, chatFunction];
  }
  @override
  Widget build(BuildContext context) {
    NavCubit navCubit = NavCubit.get(context);
    return BlocConsumer<NavCubit, NavState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Container(
          width: MediaQuery.of(context).size.width - 50,
          height: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color:
                    const Color.fromARGB(255, 152, 152, 152).withOpacity(0.1),
                spreadRadius: 2,
                blurRadius: 3,
                offset: const Offset(2, 2),
              ),
              BoxShadow(
                color:
                    const Color.fromARGB(255, 132, 132, 132).withOpacity(0.1),
                spreadRadius: 2,
                blurRadius: 3,
                offset: const Offset(5, 0),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                child: Container(
                  height: 40,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: (navCubit.selectedPage == 0)
                        ? const Color.fromRGBO(83, 232, 139, 0.2)
                        : Colors.white,
                  ),
                  child: (navCubit.selectedPage == 0)
                      ? Row(
                          children: [
                            Icon(
                              Icons.home,
                              color: mainColorLigtht,
                              size: 20,
                            ),
                            const SizedBox(width: 5),
                            const Text(
                              "Home",
                            )
                          ],
                        )
                      : const Icon(Icons.home_outlined, color: Colors.grey),
                ),
                onTap: () {
                  navCubit.changeIndex(0);
                  actions[0]();
                },
              ),
              GestureDetector(
                child: Container(
                  height: 40,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: (navCubit.selectedPage == 1)
                        ? const Color.fromRGBO(83, 232, 139, 0.2)
                        : Colors.white,
                  ),
                  child: (navCubit.selectedPage == 1)
                      ? Row(
                          children: [
                            Icon(
                              Icons.person,
                              color: mainColorLigtht,
                              size: 20,
                            ),
                            const SizedBox(width: 5),
                            const Text(
                              "Profile",
                            )
                          ],
                        )
                      : const Icon(Icons.person, color: Colors.grey),
                ),
                onTap: () {
                  navCubit.changeIndex(1);
                  actions[1]();
                },
              ),
              GestureDetector(
                child: Container(
                  height: 40,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: (navCubit.selectedPage == 2)
                        ? const Color.fromRGBO(83, 232, 139, 0.2)
                        : Colors.white,
                  ),
                  child: (navCubit.selectedPage == 2)
                      ? Row(
                          children: [
                            Icon(
                              Icons.settings,
                              color: mainColorLigtht,
                              size: 20,
                            ),
                            const SizedBox(width: 5),
                            const Text(
                              "Setting",
                            )
                          ],
                        )
                      : const Icon(Icons.settings, color: Colors.grey),
                ),
                onTap: () {
                  navCubit.changeIndex(2);
                  actions[2]();
                },
              ),
              GestureDetector(
                child: Container(
                  height: 40,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: (navCubit.selectedPage == 3)
                          ? const Color.fromRGBO(83, 232, 139, 0.2)
                          : Colors.white),
                  child: (navCubit.selectedPage == 3)
                      ? Row(
                          children: [
                            Icon(
                              Icons.chat,
                              color: mainColorLigtht,
                              size: 20,
                            ),
                            const SizedBox(width: 5),
                            const Text(
                              "Chats",
                            )
                          ],
                        )
                      : const Icon(Icons.chat, color: Colors.grey),
                ),
                onTap: () {
                  navCubit.changeIndex(3);
                  actions[3]();
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
