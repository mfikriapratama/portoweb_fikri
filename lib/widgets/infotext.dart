part of 'widgets.dart';

class InfoText extends StatelessWidget {
  final String type;
  final String text;

  const InfoText({super.key, required this.type, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$type: ',
          style: titleTextFont.copyWith(
            color: Colors.blueGrey.shade300,
            fontSize: Sizes.dimen_16,
          ),
        ),
        Flexible(
          child: Text(
            text,
            style: titleTextFont.copyWith(
              color: Colors.blueGrey.shade100,
              fontSize: Sizes.dimen_16,
            ),
          ),
        )
      ],
    );
  }
}
