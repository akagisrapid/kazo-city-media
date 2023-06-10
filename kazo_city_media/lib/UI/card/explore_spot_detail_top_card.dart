import 'package:flutter/material.dart';

import '../screen/explore_spot_page.dart';

class ExploreSpotDetailCardItem extends StatelessWidget {
  final ExploreSpotModel exploreSpot;
  const ExploreSpotDetailCardItem({super.key, required this.exploreSpot});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/fuwa_painting.png'),
                fit: BoxFit.cover)),
        alignment: AlignmentDirectional.center,
        child: Column(children: [
          Text(exploreSpot.name,
              style: const TextStyle(
                height: 11,
                color: Colors.white,
                fontSize: 20,
              )),
          Text(exploreSpot.summary,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 15, color: Colors.white)),
          Container(
              height: 100,
              alignment: Alignment.center,
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                const Spacer(),
                Container(
                    alignment: Alignment.center,
                    child: ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.redAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () => {},
                        icon: const Icon(Icons.play_arrow),
                        label: const Text("再生"))),
                const Spacer(),
                Container(
                    alignment: Alignment.center,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text('Webサイトへ'),
                    )),
                const Spacer(),
              ]))
        ]));
  }
}
