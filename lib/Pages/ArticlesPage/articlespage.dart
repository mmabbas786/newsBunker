import 'package:flutter/material.dart';
import 'package:newsapp/Pages/ArticlesPage/widgets/searchwidget.dart';
import 'package:newsapp/Pages/HomePage/Widgets/newstile.dart';

class ArticlesPage extends StatelessWidget {
  const ArticlesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: [
              const Searchwidget(),
              const SizedBox(height: 20),
              Column(
                children: [
                  Newstile(
                    onTap: () {},
                    imageUrl:
                        "https://images.bhaskarassets.com/webp/thumb/512x0/web2images/521/2024/12/23/rohit1_1734926643.gif",
                    title:
                        "चैंपियंस ट्रॉफी- भारत-पाकिस्तान मैच 23 फरवरी को होगा:ICC ने न्यूट्रल वेन्यू दुबई चुना; भारत सेमीफाइनल-फाइनल में पहुंचा तो ये मैच भी यहीं होंगे",
                    author: "Raju Rastogi",
                    tag: "Trending No 1",
                    time: "1 Hours Ago",
                  ),
                  Newstile(
                    onTap: () {},
                    imageUrl:
                        "https://images.bhaskarassets.com/webp/thumb/512x0/web2images/521/2024/12/23/alkfjasdlkfjal_1734957187.gif",
                    title:
                        "BB18 में बेबी जॉन प्रमोट करने पहुंचे वरुण धवन:कहा- सलमान खान के बर्थडे पर फैंस को मिलेगा सिकंदर फिल्म का फर्स्ट लुक और टीजर",
                    author: "Banchor Das",
                    tag: "Trending No 4",
                    time: "6 Hours Ago",
                  ),
                  Newstile(
                    onTap: () {},
                    imageUrl:
                        "https://images.bhaskarassets.com/webp/thumb/512x0/web2images/521/2024/12/23/wewsvwrv_1734960338.jpg",
                    title:
                        "TRAI ने जियो, एयरटेल, VI और BSNL पर जुर्माना लगाया:स्पैम कॉल-मैसेज पर रोक लगाने में फेल रहीं थीं, कंपनियों पर टोटल ₹141 करोड़ का जुर्माना बकाया",
                    author: "James Macullam",
                    tag: "Trending No 3",
                    time: "2 Days Ago",
                  ),
                  Newstile(
                    onTap: () {},
                    imageUrl:
                        "https://images.bhaskarassets.com/webp/thumb/512x0/web2images/521/2024/12/23/wewsvwrv_1734960338.jpg",
                    title:
                        "TRAI ने जियो, एयरटेल, VI और BSNL पर जुर्माना लगाया:स्पैम कॉल-मैसेज पर रोक लगाने में फेल रहीं थीं, कंपनियों पर टोटल ₹141 करोड़ का जुर्माना बकाया",
                    author: "James Macullam",
                    tag: "Trending No 3",
                    time: "2 Days Ago",
                  ),
                  Newstile(
                    onTap: () {},
                    imageUrl:
                        "https://images.bhaskarassets.com/webp/thumb/512x0/web2images/521/2024/12/23/wewsvwrv_1734960338.jpg",
                    title:
                        "TRAI ने जियो, एयरटेल, VI और BSNL पर जुर्माना लगाया:स्पैम कॉल-मैसेज पर रोक लगाने में फेल रहीं थीं, कंपनियों पर टोटल ₹141 करोड़ का जुर्माना बकाया",
                    author: "James Macullam",
                    tag: "Trending No 3",
                    time: "2 Days Ago",
                  ),
                  const SizedBox(height: 60),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
