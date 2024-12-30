import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsapp/Controller/bottomnavcontroller.dart';

class MyBottomNav extends StatelessWidget {
  const MyBottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    BottomNavController controller = Get.put(BottomNavController());
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          width: 250,
          height: 60,
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primaryContainer,
              borderRadius: BorderRadius.circular(100)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  controller.Index.value = 0;
                },
                child: Obx(
                  () => AnimatedContainer(
                    duration: const Duration(microseconds: 300),
                    curve: Curves.bounceOut,
                    width: 40,
                    height: 40,
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: controller.Index.value == 0
                            ? Theme.of(context).colorScheme.primary
                            : null,
                        borderRadius: BorderRadius.circular(100)),
                    child: Center(
                      child: Icon(
                        Icons.home,
                        size: 25,
                        color: controller.Index.value == 0
                            ? Theme.of(context).colorScheme.onSurface
                            : Theme.of(context).colorScheme.secondaryContainer,
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                  onTap: () {
                    controller.Index.value = 1;
                  },
                  child: Obx(
                    () => AnimatedContainer(
                      duration: const Duration(microseconds: 300),
                      curve: Curves.bounceOut,
                      width: 40,
                      height: 40,
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: controller.Index.value == 1
                              ? Theme.of(context).colorScheme.primary
                              : null,
                          borderRadius: BorderRadius.circular(100)),
                      child: Center(
                        child: Icon(
                          Icons.book,
                          size: 25,
                          color: controller.Index.value == 1
                              ? Theme.of(context).colorScheme.onSurface
                              : Theme.of(context)
                                  .colorScheme
                                  .secondaryContainer,
                        ),
                      ),
                    ),
                  )),
              InkWell(
                  onTap: () {
                    controller.Index.value = 2;
                  },
                  child: Obx(
                    () => AnimatedContainer(
                      duration: const Duration(microseconds: 300),
                      curve: Curves.bounceOut,
                      width: 40,
                      height: 40,
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: controller.Index.value == 2
                              ? Theme.of(context).colorScheme.primary
                              : null,
                          borderRadius: BorderRadius.circular(100)),
                      child: Center(
                        child: Icon(
                          Icons.person,
                          size: 25,
                          color: controller.Index.value == 2
                              ? Theme.of(context).colorScheme.onSurface
                              : Theme.of(context)
                                  .colorScheme
                                  .secondaryContainer,
                        ),
                      ),
                    ),
                  )),
              // InkWell(
              //     onTap: () {
              //       controller.Index.value = 3;
              //     },
              //     child: Obx(
              //       () => AnimatedContainer(
              //         duration: Duration(microseconds: 300),
              //         curve: Curves.bounceOut,
              //         width: 40,
              //         height: 40,
              //         padding: EdgeInsets.all(5),
              //         decoration: BoxDecoration(
              //             color: controller.Index.value == 3
              //                 ? Theme.of(context).colorScheme.primary
              //                 : null,
              //             borderRadius: BorderRadius.circular(100)),
              //         child: Center(
              //           child: Icon(
              //             Icons.person,
              //             size: 25,
              //             color: controller.Index.value == 3
              //                 ? Theme.of(context).colorScheme.onSurface
              //                 : Theme.of(context)
              //                     .colorScheme
              //                     .secondaryContainer,
              //           ),
              //         ),
              //       ),
              //     )),
            ],
          ),
        ),
      ],
    );
  }
}
