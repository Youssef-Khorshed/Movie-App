import 'package:flutter/material.dart';
import 'package:movie_app/features/Search/search_widgets/custom_textfiledsearch_search.dart';

// ignore: must_be_immutable
class SearchScreenBar extends StatefulWidget {
  final bool showLeading;
  final bool showTitle;
  final bool showActions;
  final IconButton? leadingIcon;
  final IconButton? actionIcon;
  final Function(String)? onSearch;
  bool isenabled = true;
  SearchScreenBar({
    super.key,
    this.isenabled = true,
    this.showLeading = true,
    this.showTitle = true,
    this.showActions = true,
    this.leadingIcon,
    this.actionIcon,
    this.onSearch, // Add this to pass the search handler function
  });

  @override
  // ignore: library_private_types_in_public_api
  _SearchScreenBarState createState() => _SearchScreenBarState();
}

class _SearchScreenBarState extends State<SearchScreenBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          if (widget.showLeading && widget.leadingIcon != null)
            widget.leadingIcon!,
          if (widget.showTitle)
            CustomTextfiledsearchSearch(
              onSearch: widget.isenabled ? widget.onSearch : null,
              isEnabled: widget.isenabled,
            ),
          if (widget.showActions && widget.actionIcon != null)
            widget.actionIcon!,
        ],
      ),
    );
  }
}
