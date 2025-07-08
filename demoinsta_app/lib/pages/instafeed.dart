import 'package:flutter/material.dart';

class Instagramfeed extends StatelessWidget {
  const Instagramfeed({super.key});

  final List<Map<String,String>> feedData=const
  [
    {
      "name":"Tom","profilepic":"https://cdn.pixabay.com/photo/2023/01/28/20/23/ai-generated-7751688_640.jpg",
      "postimg":"https://vastphotos.com/files/uploads/photos/10150/high-resolution-nature-landscape-vast-xl.jpg",
      "location":"sbce","likes":"35"
    },
    {
      "name":"alena joy","profilepic":"https://expertphotography.b-cdn.net/wp-content/uploads/2018/10/cool-profile-pictures-retouching-1.jpg",
      "postimg":"https://images.pexels.com/photos/1137525/pexels-photo-1137525.jpeg?cs=srgb&dl=photography-of-a-city-at-night-1137525.jpg",
      "location":"Dubai","likes":"43"
    },
    {
      "name":"apsara","profilepic":"https://cdn4.sharechat.com/img_643850_12a620d7_1668308640878_sc.jpg",
      "postimg":"https://im.indiatimes.in/media/content/2015/Apr/1%20wikipedia_1427973426.jpg",
      "location":"karnataka","likes":"12"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: feedData.length,
        itemBuilder: (context,index){
      return Container(
        child: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(feedData[index]["profilepic"]!),radius: 30,
              ),
              title: Text(feedData[index]["name"]!,
                style: TextStyle(fontWeight: FontWeight.bold),),
              subtitle: Text(feedData[index]["location"]!,
                style: TextStyle(fontSize: 8),),
              trailing: Icon(Icons.more_vert),
            ),
            Image.network(feedData[index]["postimg"]!,
              fit: BoxFit.fill,
              width:double.infinity,),
            SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border)),
                Text(feedData[index]["likes"]!),
                IconButton(onPressed: (){}, icon: Icon(Icons.mode_comment_outlined)),
                IconButton(onPressed: (){}, icon: Icon(Icons.send_outlined)),
              ],
            ),

          ],
        ),

      );
    });
    return const Placeholder();
  }
}
