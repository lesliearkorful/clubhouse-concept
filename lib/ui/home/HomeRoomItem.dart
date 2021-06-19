import 'package:clubhouse/ui/liveroom/LiveRoom.dart';
import 'package:clubhouse/utils/DynamicColor.dart';
import 'package:clubhouse/widgets/Squircle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeRoomItem extends StatelessWidget {
  const HomeRoomItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            fullscreenDialog: true,
            builder: (_) => LiveRoom(),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 20),
        padding: EdgeInsets.fromLTRB(30, 24, 30, 24),
        decoration: BoxDecoration(
          color: theme.backgroundColor,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "STARTUP CLUB",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Pitch your start up idea to VCs & top Entrepreneurs",
              style: TextStyle(
                fontSize: 14,
                color: DynamicColor.withBrightness(
                  context: context,
                  color: Colors.grey.shade600,
                  darkColor: Colors.grey.shade300,
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Squircle(),
                SizedBox(width: 5),
                Squircle(),
                SizedBox(width: 5),
                Squircle(),
                Spacer(),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: DynamicColor.withBrightness(
                      context: context,
                      color: Color(0xFFeff0f5),
                      darkColor: Color(0xFF404182),
                    ),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        CupertinoIcons.person_fill,
                        size: 18,
                      ),
                      SizedBox(width: 3),
                      Text("354"),
                      SizedBox(width: 10),
                      Icon(
                        CupertinoIcons.mic_fill,
                        size: 18,
                      ),
                      SizedBox(width: 3),
                      Text("354"),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
