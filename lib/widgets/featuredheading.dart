part of 'widgets.dart';

class FeaturedHeading extends StatelessWidget {
  const FeaturedHeading({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: screenSize.height * 0.06,
        left: screenSize.width / 15,
        right: screenSize.width / 15,
      ),
      child: ResponsiveWidget.isSmallScreen(context)
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Row(),
                Text(
                  'Featured',
                  style: titleTextFont.copyWith(fontSize: Sizes.dimen_14),
                ),
                const SizedBox(height: Sizes.dimen_4),
                const Text(
                  'Unique wildlife tours & destinations',
                  textAlign: TextAlign.end,
                ),
                const SizedBox(height: Sizes.dimen_10),
              ],
            )
          : Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Featured',
                  style: titleTextFont.copyWith(fontSize: Sizes.dimen_40),
                ),
                const Expanded(
                  child: Text(
                    'Unique wildlife tours & destinations',
                    textAlign: TextAlign.end,
                  ),
                ),
              ],
            ),
    );
  }
}
