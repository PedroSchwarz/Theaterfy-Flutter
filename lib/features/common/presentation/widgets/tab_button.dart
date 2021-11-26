import 'package:flutter/material.dart';

class TabButton extends StatelessWidget {
  final Function() action;
  final bool active;
  final String title;
  final IconData icon;

  const TabButton({
    Key? key,
    required this.action,
    required this.active,
    required this.title,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: action,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.circular(1000),
            ),
            child: Row(
              children: [
                Icon(
                  icon,
                  color: Colors.white,
                ),
                if (active) const SizedBox(width: 10),
                AnimatedContainer(
                  height: 20,
                  width: active ? 100 : 0,
                  alignment: Alignment.centerLeft,
                  duration: const Duration(milliseconds: 400),
                  child: AnimatedOpacity(
                    opacity: active ? 1 : 0,
                    duration: const Duration(milliseconds: 1200),
                    child: Text(
                      title,
                      maxLines: 1,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(width: 10),
      ],
    );
  }
}
