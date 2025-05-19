import 'package:flutter/material.dart';
import 'package:takata/core/utils/app_colors.dart';

import '../../../../../core/utils/app_font_weight.dart';
import '../../../../../core/utils/constants.dart';
import '../../../../../core/widgets/text_utils.dart';

class MessageDetailsScreen extends StatefulWidget {
  const MessageDetailsScreen({super.key});

  @override
  State<MessageDetailsScreen> createState() => _MessageDetailsScreenState();
}

class _MessageDetailsScreenState extends State<MessageDetailsScreen> {
  final List<Map<String, dynamic>> messages = [
    {
      'text': 'Hi there! I’d like to ask about my recent order.',
      'isUser': true,
      'timestamp': '10:30 AM',
    },
    {
      'text': 'Sure! Could you please provide your order ID?',
      'isUser': false,
      'timestamp': '10:31 AM',
    },
    {'text': 'Yes, it’s #12345', 'isUser': true, 'timestamp': '10:32 AM'},
  ];

  @override
  Widget build(BuildContext context) {
    return Constants.scaffoldComponent(
      appBarTitle: 'Reclays Store',
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(Icons.arrow_back_ios_rounded),
      ),
      body: Padding(
        padding: EdgeInsetsDirectional.symmetric(vertical: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                reverse: true,
                itemCount: messages.length,
                itemBuilder: (context, index) {
                  final message = messages[messages.length - 1 - index];
                  final isUser = message['isUser'];

                  return Align(
                    alignment:
                        isUser ? Alignment.centerRight : Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: Column(
                        crossAxisAlignment:
                            isUser
                                ? CrossAxisAlignment.end
                                : CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              if (!isUser)
                                Container(
                                  height: 32,
                                  width: 32,
                                  margin: const EdgeInsets.only(right: 8),
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    color: AppColors.ofWhite,
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  child: Image.asset(
                                    'assets/images/playStationHand.png',
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              Flexible(
                                child: Container(
                                  padding: const EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                    color:
                                        isUser
                                            ? AppColors.ofWhite
                                            : AppColors.primaryColor,
                                    borderRadius: BorderRadius.only(
                                      topLeft: const Radius.circular(12),
                                      topRight: const Radius.circular(12),
                                      bottomLeft: Radius.circular(
                                        isUser ? 12 : 0,
                                      ),
                                      bottomRight: Radius.circular(
                                        isUser ? 0 : 12,
                                      ),
                                    ),
                                  ),
                                  child: textUtils(
                                    text: message['text'],
                                    color:
                                        isUser
                                            ? AppColors.black
                                            : AppColors.white,
                                    fontWeight: AppFontWeight.regular,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 4),
                          Padding(
                            padding: EdgeInsets.only(
                              left: isUser ? 0 : 40,
                              right: isUser ? 8 : 0,
                            ),
                            child: textUtils(
                              text: message['timestamp'],
                              color: AppColors.greyText,
                              fontWeight: AppFontWeight.regular,
                              fontSize: 11,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            _buildTypingIndicator(isTyping: true),
            _buildMessageInput(),
          ],
        ),
      ),
    );
  }

  Widget _buildTypingIndicator({bool isTyping = false}) {
    if (!isTyping) return const SizedBox.shrink();
    return Padding(
      padding: const EdgeInsets.only(left: 16, bottom: 8),
      child: Row(
        children: [
          const CircleAvatar(radius: 10, backgroundColor: Colors.grey),
          const SizedBox(width: 8),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Text('Typing...'),
          ),
        ],
      ),
    );
  }

  Widget _buildMessageInput() {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            IconButton(
              icon: const Icon(Icons.emoji_emotions_outlined),
              onPressed: () {},
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Type your message...',
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 10,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
              ),
            ),
            IconButton(icon: const Icon(Icons.attach_file), onPressed: () {}),
            IconButton(
              icon: const Icon(Icons.send, color: Colors.blueAccent),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
