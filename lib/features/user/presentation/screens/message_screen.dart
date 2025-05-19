import 'package:flutter/material.dart';
import 'package:takata/config/routes/app_routes.dart';
import 'package:takata/core/utils/constants.dart';
import 'package:takata/features/user/presentation/widgets/message_item_widget.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({super.key});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Constants.scaffoldComponent(
      appBarTitle: 'Messages',
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
          child: Column(
            children: [
              ListView.builder(
                itemCount: 5,
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, Routes.messageDetailsRoute);
                    },
                    child: messageItemWidget(
                      imagePath: 'assets/images/Vector.png',
                      title: 'Reclays Store',
                      subTitle: 'Please send your address',
                      timeText: '8:10',
                      yesterdayMessage: true,
                      messageNumber: '2',
                      noMessages: true,
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
