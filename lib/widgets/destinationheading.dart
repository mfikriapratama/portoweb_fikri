part of 'widgets.dart';

class DestinationHeading extends StatelessWidget {
  const DestinationHeading({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isSmallScreen(context)
        ? Container(
            padding: EdgeInsets.only(
              top: screenSize.height / Sizes.dimen_20,
              bottom: screenSize.height / Sizes.dimen_20,
            ),
            width: screenSize.width,
            child:  Text(
              'Destinations diversity',
              textAlign: TextAlign.center,
              style: bodyTextFont.copyWith(
                fontSize: Sizes.dimen_24,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        : Container(
            padding: EdgeInsets.only(
              top: screenSize.height / Sizes.dimen_10,
              bottom: screenSize.height / Sizes.dimen_16,
            ),
            width: screenSize.width,
            child:  Text(
              'Destinations diversity',
              textAlign: TextAlign.center,
              style: bodyTextFont.copyWith(
                fontSize: Sizes.dimen_40,
                fontWeight: FontWeight.bold,
              ),
            ),
          );
  }
}
