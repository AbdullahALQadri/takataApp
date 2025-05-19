import 'package:flutter/material.dart';
import 'package:takata/core/utils/app_colors.dart';
import 'package:takata/core/utils/constants.dart';
import 'package:takata/core/widgets/elevated_buttons/elevated_button.dart';
import 'package:takata/core/widgets/text_field/text_field_plus_widget.dart';

class MyAccountScreen extends StatefulWidget {
  const MyAccountScreen({super.key});

  @override
  State<MyAccountScreen> createState() => _MyAccountScreenState();
}

class _MyAccountScreenState extends State<MyAccountScreen> {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _postalCodeController = TextEditingController();
  final TextEditingController _homeNumberController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Constants.scaffoldComponent(
      appBarTitle: 'My Account',
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(Icons.arrow_back_ios_rounded),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),

        child: Form(
          key: _formKey,
          child: Column(
            children: [
              // Profile Image with Edit Icon
              Center(
                child: Stack(
                  children: [
                    const CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/images/profileImage.png'),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: InkWell(
                        onTap: () {},
                        customBorder: const CircleBorder(),
                        child: Container(
                          padding: EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.container,
                          ),
                          child: Icon(
                            Icons.camera_alt_outlined,
                            size: 18,
                            color: AppColors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),

              textFieldPlusWidget(
                controller: _firstNameController,
                keyboardType: TextInputType.text,
                hintLabel: 'First Name',
                hintText: 'Panda',
                suffixIcon: Icon(
                  Icons.person_outline,
                  color: AppColors.iconsColor,
                ),
                validator: (p0) {
                  return null;
                },
              ),
              const SizedBox(height: 20),

              textFieldPlusWidget(
                controller: _lastNameController,
                keyboardType: TextInputType.text,
                hintLabel: 'Last Name',
                hintText: 'Panda',
                suffixIcon: Icon(
                  Icons.person_outline,
                  color: AppColors.iconsColor,
                ),
                validator: (p0) {
                  return null;
                },
              ),
              const SizedBox(height: 20),

              textFieldPlusWidget(
                controller: _phoneNumberController,
                keyboardType: TextInputType.phone,
                hintLabel: 'Phone Number',
                hintText: '+ 0123456789',
                suffixIcon: Icon(
                  Icons.phone_iphone_outlined,
                  color: AppColors.iconsColor,
                ),
                validator: (p0) {
                  return null;
                },
              ),
              const SizedBox(height: 20),

              textFieldPlusWidget(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                hintLabel: 'Email',
                hintText: 'Email',
                suffixIcon: Icon(
                  Icons.email_outlined,
                  color: AppColors.iconsColor,
                ),
                validator: (p0) {
                  return null;
                },
              ),
              const SizedBox(height: 20),

              textFieldPlusWidget(
                controller: _passwordController,
                keyboardType: TextInputType.text,
                isPassword: true,
                hintLabel: 'Password',
                hintText: 'Password',
                suffixIcon: Icon(
                  Icons.lock_outline,
                  color: AppColors.iconsColor,
                ),
                validator: (p0) {
                  return null;
                },
              ),
              const SizedBox(height: 20),

              textFieldPlusWidget(
                controller: _addressController,
                keyboardType: TextInputType.text,
                hintLabel: 'Address',
                hintText: 'Address',
                suffixIcon: Icon(
                  Icons.location_on_outlined,
                  color: AppColors.iconsColor,
                ),
                validator: (p0) {
                  return null;
                },
              ),
              const SizedBox(height: 20),

              textFieldPlusWidget(
                controller: _postalCodeController,
                keyboardType: TextInputType.text,
                hintLabel: 'Postal Code',
                hintText: '12345',
                suffixIcon: Icon(
                  Icons.location_on_outlined,
                  color: AppColors.iconsColor,
                ),
                validator: (p0) {
                  return null;
                },
              ),
              const SizedBox(height: 20),

              textFieldPlusWidget(
                controller: _homeNumberController,
                keyboardType: TextInputType.text,
                hintLabel: 'Home Number',
                hintText: '99',
                suffixIcon: Icon(
                  Icons.location_on_outlined,
                  color: AppColors.iconsColor,
                ),
                validator: (p0) {
                  return null;
                },
              ),

              const SizedBox(height: 20),

              elevatedButton(
                onPress: () {},
                title: 'Save Changes',
                titleColor: AppColors.white,
                backgroundColor: AppColors.primaryColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
