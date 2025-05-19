import 'package:flutter/material.dart';
import 'package:takata/core/utils/constants.dart';
import 'package:takata/features/user/presentation/widgets/favourite/favourite_item_widget.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  final List<String> items = List.generate(10, (i) => 'Item ${i + 1}');

  @override
  Widget build(BuildContext context) {
    return Constants.scaffoldComponent(
      appBarTitle: 'Favourites',
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24 , vertical: 20),
          child: Column(
            children: [
              ListView.builder(
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                // padding: EdgeInsets.all(16),
                // itemCount: 1, // كل سطر يحتوي عنصرين
                itemCount: (items.length / 2).ceil(),
                // كل سطر يحتوي عنصرين
                itemBuilder: (context, rowIndex) {
                  int firstIndex = rowIndex * 2;
                  int secondIndex = firstIndex + 1;

                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // العنصر الأول (بدون إزاحة)
                      Expanded(
                        child: favouriteItemWidget(
                          imagePath: 'assets/images/playStationHand.png',
                          title: 'Wireless Controller for PS4™',
                          textPrice: '\$64.99',
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(width: 30),
                      // العنصر الثاني (بإزاحة إذا موجود)
                      Expanded(
                        child:
                            secondIndex < items.length
                                ? Padding(
                                  padding: const EdgeInsets.only(top: 30.0),
                                  child: favouriteItemWidget(
                                    imagePath:
                                        'assets/images/playStationHand.png',
                                    title: 'Wireless Controller for PS4™',
                                    textPrice: '\$64.99',
                                    onPressed: () {},
                                  ),
                                )
                                : Container(), // إذا ما فيه عنصر ثاني، نتركه فاضي
                      ),
                    ],
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
