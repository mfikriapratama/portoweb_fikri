part of 'widgets.dart';

class TopBarContents extends StatefulWidget {
  final double opacity;

  const TopBarContents(this.opacity, {super.key});

  @override
  State<TopBarContents> createState() => _TopBarContentsState();
}

class _TopBarContentsState extends State<TopBarContents> {
  List isHovering = [false, false, false, false, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return PreferredSize(
      preferredSize: Size(screenSize.width, 1000),
      child: Container(
        color: Colors.blueGrey.shade900.withOpacity(widget.opacity),
        child: Padding(
          padding: const EdgeInsets.all(Sizes.dimen_20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'EXPLORE',
                style: titleTextFont.copyWith(
                  color: Colors.blueGrey.shade100,
                  fontSize: Sizes.dimen_20,
                  fontWeight: FontWeight.w400,
                  letterSpacing: Sizes.dimen_4,
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: screenSize.width / Sizes.dimen_8),
                    InkWell(
                      onHover: (value) {
                        setState(() {
                          value ? isHovering[0] = true : isHovering[0] = false;
                        });
                      },
                      onTap: () {},
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Discover',
                            style: titleTextFont.copyWith(
                              color: isHovering[0]
                                  ? Colors.blue.shade200
                                  : Colors.white,
                            ),
                          ),
                          const SizedBox(height: Sizes.dimen_4),
                          Visibility(
                            maintainAnimation: true,
                            maintainState: true,
                            maintainSize: true,
                            visible: isHovering[0],
                            child: Container(
                              height: Sizes.dimen_2,
                              width: Sizes.dimen_20,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: screenSize.width / Sizes.dimen_20),
                    InkWell(
                      onHover: (value) {
                        setState(() {
                          value ? isHovering[1] = true : isHovering[1] = false;
                        });
                      },
                      onTap: () {},
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Contact Us',
                            style: titleTextFont.copyWith(
                              color: isHovering[1]
                                  ? Colors.blue[200]
                                  : Colors.white,
                            ),
                          ),
                          const SizedBox(height: Sizes.dimen_4),
                          Visibility(
                            maintainAnimation: true,
                            maintainState: true,
                            maintainSize: true,
                            visible: isHovering[1],
                            child: Container(
                              height: Sizes.dimen_2,
                              width: Sizes.dimen_20,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              InkWell(
                onHover: (value) {
                  setState(() {
                    value ? isHovering[2] = true : isHovering[2] = false;
                  });
                },
                onTap: () {},
                child: Text(
                  'Sign Up',
                  style: titleTextFont.copyWith(
                    color: isHovering[2] ? Colors.white : Colors.white70,
                  ),
                ),
              ),
              SizedBox(
                width: screenSize.width / 50,
              ),
              InkWell(
                onHover: (value) {
                  setState(() {
                    value ? isHovering[3] = true : isHovering[3] = false;
                  });
                },
                onTap: () {},
                child: Text(
                  'Login',
                  style: titleTextFont.copyWith(
                    color: isHovering[3] ? Colors.white : Colors.white70,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
