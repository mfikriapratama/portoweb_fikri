part of 'widgets.dart';

class BottomBarColumn extends StatelessWidget {
  final String heading;
  final String s1;
  final String s2;
  final String s3;

  const BottomBarColumn({
    super.key,
    required this.heading,
    required this.s1,
    required this.s2,
    required this.s3,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: Sizes.dimen_20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            heading,
            style: bodyTextFont.copyWith(
              color: Colors.blueGrey[300],
              fontSize: Sizes.dimen_18,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: Sizes.dimen_10),
          Text(
            s1,
            style: bodyTextFont.copyWith(
              color: Colors.blueGrey[100],
              fontSize: Sizes.dimen_14,
            ),
          ),
          const SizedBox(height: Sizes.dimen_4),
          Text(
            s2,
            style: bodyTextFont.copyWith(
              color: Colors.blueGrey[100],
              fontSize: Sizes.dimen_14,
            ),
          ),
          const SizedBox(height: Sizes.dimen_4),
          Text(
            s3,
            style: bodyTextFont.copyWith(
              color: Colors.blueGrey[100],
              fontSize: Sizes.dimen_14,
            ),
          ),
        ],
      ),
    );
  }
}
