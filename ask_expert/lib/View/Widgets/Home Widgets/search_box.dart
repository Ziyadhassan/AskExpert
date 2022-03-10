import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({final Key? key}) : super(key: key);

  @override
  Widget build(final BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      width: MediaQuery.of(context).size.width,
      height: 40,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(22)),
        boxShadow: <BoxShadow>[
          BoxShadow(
            offset: Offset(2, 4),
            color: Color.fromRGBO(42, 29, 118, .20),
            blurRadius: 8,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(right: 15),
        child: Align(
          alignment: Alignment.centerRight,
          child: Image.asset('assets/Search Icon.png'),
        ),
      ),
    );
  }
}
