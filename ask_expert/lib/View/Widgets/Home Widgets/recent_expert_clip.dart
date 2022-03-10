import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RecentExpertClip extends StatelessWidget {
  const RecentExpertClip({
    required this.name,
    required this.rate,
    required this.imgURL,
    required this.status,
    final Key? key,
  }) : super(key: key);

  final String imgURL;
  final String name;
  final String rate;
  final String status;

  Widget _icon()
  {
    if(status == "Available")
    return const Icon(
      Icons.circle,
      color: Colors.green,
    );

    if(status == "In Meet")
      return const Icon(
        Icons.video_camera_back_rounded,
        color: Colors.deepPurple,
      );

    return const Icon(
      Icons.circle,
      color: Colors.black,
    );
  }

  @override
  Widget build(final BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            radius: 50,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.network(
                imgURL,
              ),
            ),
          ),
          Text(
            name,
            style: GoogleFonts.roboto(
              fontSize: 17,
              height: 1.5,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Icon(
                Icons.star,
                color: Colors.yellow,
              ),
              Text(
                "$rate | ",
                style: GoogleFonts.roboto(fontSize: 15),
              ),
              _icon(),
              Text(" $status"),
            ],
          ),
        ],
      ),
    );
  }
}
