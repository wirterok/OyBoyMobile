import "package:flutter/material.dart";
import "package:provider/provider.dart";

import "/constants/export.dart";
import "/widgets/export.dart";
import "/data/export.dart";

class SearchPage<T extends SearchVideoGeneric> extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  static MaterialPage videoSearch() {
    return const MaterialPage(
        name: OyBoyPages.videoSearchPath,
        key: ValueKey(OyBoyPages.videoSearchPath),
        child: SearchPage<VideoSearchManager>());
  }

  static MaterialPage streamSearch() {
    return const MaterialPage(
        name: OyBoyPages.streamSearchPath,
        key: ValueKey(OyBoyPages.streamSearchPath),
        child: SearchPage<SearchVideoGeneric>());
  }

  @override
  Widget build(BuildContext context) {
    return Search<T>();
  }
}

class Search<T extends SearchVideoGeneric> extends StatefulWidget {
  Search({Key? key}) : super(key: key);

  @override
  State<Search<T>> createState() => _SearchState<T>();
}

class _SearchState<T extends SearchVideoGeneric> extends State<Search<T>> {
  final TextEditingController _searchController = TextEditingController();

  void searchUpdate() {}

  @override
  void initState() {
    _searchController.addListener(searchUpdate);
    super.initState();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultPage(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.read<T>().goToPage(),
        ),
        title: SearchInput(
          controller: _searchController,
        ),
        actions: const <Widget>[Icon(Icons.abc_outlined)],
      ),
    );
  }
}

class SearchInput extends StatelessWidget {
  SearchInput({Key? key, required this.controller}) : super(key: key);

  final TextEditingController controller;
  final FocusNode focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
          controller: controller,
          decoration: const InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
            enabledBorder:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
            focusedBorder:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
          )),
    );
  }
}
