import 'package:flutter/material.dart';



class MainBodyClone extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // main column
          children: [
            // heading row
            Padding(
              padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // image in the heading
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://s.wsj.net/public/resources/images/SM-AB372_FAILUR_M_20180425143629.jpg'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  // details of the user
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Flutter App Development"),
                      Text("86,717 followers"),
                      Row(
                        children: [
                          Text("1w."),
                          Icon(
                            Icons.circle,
                            size: 12,
                          ),
                        ],
                      )
                    ],
                  ),
                  Spacer(),
                  // gesture dot icons
                  Align(
                    alignment: Alignment.topRight,
                    child: Icon(Icons.more_vert),
                  ),
                ],
              ),
            ),

            // Text below heading
            Padding(
              padding: const EdgeInsets.only(
                  top: 12, right: 10, left: 10, bottom: 10.0),
              child: Text(
                'After 4 interview attempts over the past 5 years, on my birthday this year i fot to celebrate starting a new job at Google. It has always been a ...',
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            // Container for image
            Container(
              width: double.infinity,
              child: Image(
                image: NetworkImage(
                    'https://www.incimages.com/uploaded_files/image/1920x1080/getty_812897364_20001333181884361220_369378.jpg'),
                fit: BoxFit.fill,
                height: 220.0,
              ),
            ),

            // two text below image
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Google I/O spotlight: Flutter in action at ByteDance',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'medium.com. 8 min read',
                    style: TextStyle(color: Colors.grey, fontSize: 12.0),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Divider(
                color: Colors.grey,
              ),
            ),
            // Tail of the main page
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Icon(
                        Icons.thumb_up,
                        size: 17.0,
                      ),
                      Text(
                        'Like',
                        style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w500,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Icon(
                        Icons.comment,
                        size: 17.0,
                      ),
                      Text(
                        'Like',
                        style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w500,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Icon(
                        Icons.arrow_forward,
                        size: 17.0,
                      ),
                      Text(
                        'Like',
                        style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w500,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Icon(
                        Icons.send,
                        size: 17.0,
                      ),
                      Text(
                        'Like',
                        style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w500,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Divider(
              color: Color(0xFFF3F2EF),
              thickness: 7.0,
            ),
          ],
        );
      },
    );
  }
}