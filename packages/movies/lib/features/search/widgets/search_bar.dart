import 'package:alaska/alaska.dart';
import 'package:flutter/material.dart';

class QuerySearchBar extends StatefulWidget {
  final Function(String) onSearch;

  const QuerySearchBar({super.key, required this.onSearch});

  @override
  State<QuerySearchBar> createState() => _QuerySearchBarState();
}

class _QuerySearchBarState extends State<QuerySearchBar> {
  final queryController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    queryController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = context.alaska;

    return SliverPersistentHeader(
      floating: true,
      delegate: AppPinnedHeader(
        max: 80,
        content: Container(
          padding: EdgeInsets.all(theme.sizes.spacing.x400),
          color: theme.colors.core.background.secondary,
          child: TextField(
            controller: queryController,
            textCapitalization: TextCapitalization.words,
            decoration: InputDecoration(
              label: const Text('Movie title'),
              contentPadding: EdgeInsets.all(
                theme.sizes.spacing.x300,
              ),
              floatingLabelStyle: theme.typography.p4.copyWith(
                color: theme.colors.core.text.secondary,
              ),
              suffixIcon: IconButton(
                onPressed: () => widget.onSearch(queryController.text),
                splashRadius: 30,
                iconSize: 30,
                color: theme.colors.core.element.primary,
                icon: const Icon(Icons.chevron_right_outlined),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
