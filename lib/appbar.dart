import 'package:flutter/material.dart';

class AppbarSearch extends StatefulWidget {
  const AppbarSearch({Key? key}) : super(key: key);

  @override
  State<AppbarSearch> createState() => _AppbarSearchState();
}

class _AppbarSearchState extends State<AppbarSearch> {
  final TextEditingController _controller = TextEditingController();
  bool tiklandiMi = false;

  @override
  void initState() {
    _controller;
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.orange,
        title: tiklandiMi
            ? TextFormField(
                controller: _controller,
                cursorColor: Colors.white,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  letterSpacing: 0.42,
                ),
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(borderSide: BorderSide.none),
                  hintText: 'Bir Şeyler Ara',
                  hintStyle: TextStyle(
                    color: Colors.white,
                  ),
                ),
              )
            : const Text('SearchBar'),
        actions: [
          tiklandiMi
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      tiklandiMi = false;
                      _controller.clear();
                    });
                  },
                  icon: const Icon(Icons.cancel_outlined),
                )
              : IconButton(
                  onPressed: () {
                    setState(() {
                      tiklandiMi = true;
                    });
                  },
                  icon: const Icon(Icons.search),
                ),
        ],
      ),
    );
  }
}
