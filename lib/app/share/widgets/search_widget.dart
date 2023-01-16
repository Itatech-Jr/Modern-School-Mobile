import 'package:flutter/material.dart';
import '../styles/colors.dart';

class SearchWidget extends StatefulWidget {
  final List<String> lista;

  const SearchWidget({Key? key, required this.lista}) : super(key: key);

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  late List<String> foundList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    foundList = widget.lista;
  }

  void runFilter(String value) {
    late List<String> results = [];
    if (value.isEmpty) {
      results = widget.lista;
    } else {
      results = widget.lista.where((element) => element.toLowerCase().contains(value.toLowerCase())).toList();
    }

    setState(() {
      foundList = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            onChanged: (value) => runFilter(value),
            decoration: InputDecoration(
              suffixIcon: Icon(
                Icons.search,
                color: primaryColor,
                size: 30,
              ),
              hintText: "Pesquisar",
              filled: true,
              fillColor: const Color(0xFFEEEEEE),
              enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                borderSide: BorderSide(color: Color(0xFFEEEEEE)),
              ),
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                borderSide: BorderSide(color: Color(0xFFEEEEEE)),
              ),
            ),
          ),
        ),
        Column(
          children: foundList.map((n) {
            return Text(n);
          }).toList(),
        )
      ],
    );
  }
}