import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsapp/Controller/newscontroller.dart';
import 'package:newsapp/Pages/HomePage/Widgets/newstile.dart';
import 'package:newsapp/Pages/HomePage/Widgets/trendingcard.dart';
import 'package:newsapp/Pages/NewsDetails/newsdetailspage.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    NewsController newsController = Get.put(NewsController());
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primaryContainer,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Icon(
                      Icons.dashboard,
                      color: Theme.of(context).colorScheme.secondaryContainer,
                    ),
                  ),
                  const Text(
                    "NEWS BUNKER",
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.5,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      newsController.getNewsForYou();
                    },
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primaryContainer,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Icon(
                        Icons.person,
                        color: Theme.of(context).colorScheme.secondaryContainer,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hottest News",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Text(
                    "See All",
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Obx(
                  () => Row(
                    children: newsController.trendingNewsList
                        .map(
                          (e) => Trendingcard(
                            ontap: () {
                              Get.to(NewsDetailsPage(
                                news: e,
                              ));
                            },
                            imageUrl: e.urlToImage!,
                            title: e.title!,
                            author: e.author ?? "Unknown",
                            tag: "Trending No 1",
                            time: e.publishedAt!,
                          ),
                        )
                        .toList(),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "News For You",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Text(
                    "See All",
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Obx(
                () => Column(
                  children: newsController.newsForYouList
                      .map(
                        (e) => Newstile(
                          onTap: () {
                            Get.to(NewsDetailsPage(news: e));
                          },
                          imageUrl: e.urlToImage ??
                              "https://images.bhaskarassets.com/webp/thumb/512x0/web2images/521/2024/12/27/ezgifcom-optimize-1_1735277538.gif",
                          title: e.title!,
                          author: e.author ?? "Unknown",
                          tag: "Trending No 1",
                          time: e.publishedAt!,
                        ),
                      )
                      .toList(),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
