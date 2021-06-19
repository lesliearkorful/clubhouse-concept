import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeUpcoming extends StatelessWidget {
  final String time;
  final String title;
  const HomeUpcoming({
    Key? key,
    required this.time,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      padding: EdgeInsets.fromLTRB(20, 34, 24, 34),
      decoration: BoxDecoration(
        color: theme.primaryColor,
        borderRadius: BorderRadius.circular(24),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: Border(
            left: BorderSide(
              width: 3,
              color: Color(0xFFf69677),
            ),
          ),
        ),
        child: Row(
          children: [
            SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "$time",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "$title",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            Spacer(),
            Icon(
              CupertinoIcons.chevron_down,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
