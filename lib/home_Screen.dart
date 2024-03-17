import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:rate_app/reviews_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  bool isHelpFull = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Divider(
              color: Colors.grey[300],
            ),
            const Row(
              children: [
                Icon(Icons.star,color: Colors.black,size: 30,),
                SizedBox(width: 6,),
                Text("4.99 . 81 reviews",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 18),),
              ],
            ),
            const SizedBox(height: 15,),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.22,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 14),
                    width: MediaQuery.sizeOf(context).width * 0.8,
                  height: MediaQuery.sizeOf(context).height * 0.5,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),border: Border.all(color: Colors.grey)),
                    child: Column(children: [
                      const Text(
                          "Sleek design adds elegance to any room while smart features ensure seamless access to favorite content. Immersive sound enhances the overall entertainment experience.Sleek design adds elegance to any room while smart features ensure seamless access to favorite content. Immersive sound enhances the overall entertainment experience.",overflow: TextOverflow.ellipsis,
                        maxLines: 4,
                      ),
                      const SizedBox(height: 14,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Ahmed Mohamed Ali",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                            children: [
                              RatingBarIndicator(
                                rating: 3,
                                itemBuilder: (context, index) =>
                                const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                itemCount: 5,
                                itemSize: 15.0,
                              ),
                              const Text(
                                "Nov 5,2022",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          InkWell(
                            borderRadius: BorderRadius.circular(10),
                            onTap: (){
                              setState(() {
                              isHelpFull = !isHelpFull;
                              });
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                              Icon(isHelpFull ? Icons.thumb_up: Icons.thumb_up_outlined,color: isHelpFull ? Colors.blue : Colors.black87,),
                              const SizedBox(
                                width: 8,
                              ),
                              Text("Helpful",style: TextStyle(color: isHelpFull ? Colors.blue : Colors.black87),),
                            ],),
                          ),
                        ],
                      ),
                    ],),
                  ),
                  separatorBuilder: (context, index) => const SizedBox(
                    width: 16,
                  ),
                  itemCount: 15),
            ),
            const SizedBox(height: 15,),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ReviewsScreens(),));
              },
              style: ButtonStyle(
                fixedSize: MaterialStatePropertyAll(Size(MediaQuery.sizeOf(context).width, 48)),
                  backgroundColor: const MaterialStatePropertyAll(Colors.red)),
              child: const FittedBox(
                fit: BoxFit.fitWidth,
                child: Text(
                  "Show All Reviews",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Divider(
              color: Colors.grey[300],
            ),
          ],
        ),
      ),
    );
  }
}
