import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PersonData extends StatelessWidget {
  const PersonData({
    required this.name,
    required this.rate,
    required this.imgURL,
    required this.status,
    required this.description,
    final Key? key,
  }) : super(key: key);

  final String imgURL;
  final String name;
  final String rate;
  final String status;
  final String description;

  Widget _icon() {
    if (status == "Available")
      return const Icon(
        Icons.circle,
        color: Colors.green,
      );

    if (status == "In Meet")
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
    return Column(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.symmetric(vertical: 15),
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: <Widget>[
              Row(
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
                  const SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        name,
                        style: GoogleFonts.roboto(
                          fontSize: 30,
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
                          Text(" $status",style: const TextStyle(fontSize: 17),),
                        ],
                      ),
                      Text(
                        description,
                        style: GoogleFonts.roboto(
                          fontSize: 20,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 4,),

            ],
          ),
        ),
        const Divider(
          height: 1,
          color: Color.fromRGBO(42, 29, 118, 0.20),
          thickness: 1,
        ),
      ],
    );
  }
}
