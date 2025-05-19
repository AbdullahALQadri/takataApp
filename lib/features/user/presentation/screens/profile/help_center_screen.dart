import 'package:flutter/material.dart';
import 'package:takata/core/utils/app_colors.dart';
import 'package:takata/core/utils/constants.dart';
import 'package:takata/features/user/presentation/widgets/profile/contact_us_widget.dart';
import 'package:takata/features/user/presentation/widgets/profile/question_list_widget.dart';

import '../../../../../core/utils/app_font_weight.dart';
import '../../../../../core/widgets/elevated_buttons/elevated_button.dart';
import '../../../../../core/widgets/text_utils.dart';

class HelpCenterScreen extends StatelessWidget {
  const HelpCenterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Constants.scaffoldComponent(
      appBarTitle: 'Help Center',
      leading: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: const Icon(Icons.arrow_back_ios_rounded),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 15),
        children: [
          textUtils(
            text: 'FAQ',
            color: AppColors.black,
            fontWeight: AppFontWeight.regular,
            fontSize: 18,
          ),
          const SizedBox(height: 15),
          questionListWidget(questionText: 'How does warranty work on tokoto?'),
          questionListWidget(
            questionText: 'How long is my order delivery time?',
          ),
          questionListWidget(questionText: 'How to become a tokoto seller?'),
          questionListWidget(questionText: 'How does warranty work on tokoto?'),
          questionListWidget(
            questionText: 'Why I don\'t accept otp on my phone?',
          ),
          questionListWidget(questionText: 'How to rate my order products?'),

          const SizedBox(height: 20),
          textUtils(
            text: 'Contact Us',
            color: AppColors.black,
            fontWeight: AppFontWeight.regular,
            fontSize: 18,
          ),
          const SizedBox(height: 15),

          contactUsWidget(
            icon: Icons.chat_outlined,
            title: 'Chat Tokoto now',
            subTitle: 'You can chat with us here',
            onTap: () {},
          ),
          contactUsWidget(
            icon: Icons.email_outlined,
            title: 'Send Email',
            subTitle: 'Send your question or problem',
            onTap: () {},
          ),
          contactUsWidget(
            icon: Icons.phone_outlined,
            title: 'Costumer Service',
            subTitle: '1800806',
            onTap: () {},
          ),
        ],
      ),

      bottomNavigationBar: Container(
        padding: EdgeInsetsDirectional.only(
          start: 80,
          end: 80,
          bottom: 10,
          top: 10,
        ),
        decoration: BoxDecoration(
          // color: Colors.amber,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        child:  textUtils(
          text: '© Copyright 2020 - StayatHome',
          color: AppColors.greyText,
          fontWeight: AppFontWeight.regular,
          fontSize: 14,
        ),
      ),
    );
  }
}
