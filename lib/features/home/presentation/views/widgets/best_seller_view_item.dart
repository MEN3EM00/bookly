import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.8 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: const DecorationImage(
                  image: AssetImage(AssetsData.testImage),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          const SizedBox(width: 30),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Text(
                    'Harry Potter and the Goblet of Fire',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: Styles.textStyle20,
                  ),
                ),
                const SizedBox(height: 3),
                Text('J.K. Rowling', style: Styles.textStyle14),
                const SizedBox(height: 3),
                Row(
                  children: [
                    Text(
                      '19,99 €',
                      style: Styles.textStyle20.copyWith(
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    const Spacer(flex: 1),
                    BookRating(),
                    SizedBox(width: 18),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
