import 'package:flutter/material.dart';

class LatestNewsItem extends StatelessWidget {
  const LatestNewsItem({super.key});
  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/news.png'), fit: BoxFit.cover
              ),
              borderRadius: BorderRadius.all(Radius.circular(20))
              ),
      alignment: AlignmentDirectional.center, 
      
      child: Column(
        children: [
        const Text('新着News!!',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                height: 10
              )
              ),
              Container(
            alignment: Alignment.center,
            height: 200,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center, 
               children: [
                const Spacer(),
                Container(
                alignment: Alignment.center,
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: ()=>{
                    Navigator.pushNamed(context, '/explore_spot_list')
                  },
                  icon: const Icon(Icons.play_arrow), label: const Text("詳細"))
                ),
                const Spacer(),
                
            Container(
                alignment: Alignment.center,
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {},
                  icon: const Icon(Icons.list, color: Colors.redAccent,), // ここを変更
                  label: const Text('マイリスト'),
                )),
                const Spacer(),
          ])
           )
      ],
      ));
  }
}
