import 'package:clone_ui_tiktok/screens/home_screens/inbox/widgets/inbox_data.dart';
import 'package:clone_ui_tiktok/screens/home_screens/proflie/widgets/button_item.dart';
import 'package:clone_ui_tiktok/widgets/text_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class FrinedUserInbox extends StatelessWidget {
  const FrinedUserInbox({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SlidableAutoCloseBehavior(
      closeWhenOpened: true,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: List.generate(
          InboxData().inboxData.length,
          (index) {
            final data = InboxData().inboxData[index];
            return Slidable(
              key: Key(index.toString()),
              endActionPane: ActionPane(
                extentRatio: 0.68,
                motion: const DrawerMotion(),
                children: [
                  SlidableAction(
                    onPressed: (context) {},
                    backgroundColor: const Color.fromARGB(255, 46, 54, 46),
                    label: 'More',
                  ),
                  SlidableAction(
                    onPressed: (context) {},
                    backgroundColor: const Color.fromARGB(255, 40, 44, 40),
                    label: 'Report',
                  ),
                  SlidableAction(
                    onPressed: (context) {},
                    backgroundColor: const Color.fromARGB(255, 245, 75, 63),
                    label: 'Delete',
                  ),
                ],
              ),
              child: ListTile(
                leading: ClipOval(
                  child: Image.asset(
                    data['img'],
                    width: size.width * 0.14,
                    height: size.width * 0.14,
                    fit: BoxFit.cover,
                  ),
                ),
                title: TextApp(
                  text: data['name'],
                ),
                subtitle: const TextApp(text: 'Thông báo'),
                trailing: ButtonItem(
                  icon: Icons.camera_alt_outlined,
                  onPressed: () {},
                ),
                onTap: () {},
              ),
            );
          },
        ),
      ),
    );
  }
}
