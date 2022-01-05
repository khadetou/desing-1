import 'package:flutter/material.dart';
import "./colors.dart" as colors;

class Interests extends StatefulWidget {
  const Interests({Key? key}) : super(key: key);

  @override
  _InterestsState createState() => _InterestsState();
}

class _InterestsState extends State<Interests>
    with SingleTickerProviderStateMixin {
  ScrollController? _scrollController;
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 24, right: 24),
      height: 384,
      decoration: BoxDecoration(
        color: colors.whiteColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.06),
            blurRadius: 24,
            offset: const Offset(0, 16),
          ),
          BoxShadow(
            color: Colors.grey.withOpacity(0.04),
            blurRadius: 6,
            offset: const Offset(0, 2),
          ),
          BoxShadow(
            color: Colors.grey.withOpacity(0.04),
            blurRadius: 6,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: NestedScrollView(
        controller: _scrollController,
        headerSliverBuilder: (BuildContext context, bool isScrolling) {
          return [
            SliverAppBar(
              pinned: true,
              backgroundColor: Colors.white,
              shadowColor: Colors.transparent,
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(10),
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  child: TabBar(
                    indicatorPadding: const EdgeInsets.all(0),
                    controller: _tabController,
                    indicatorColor: colors.textColor,
                    indicatorSize: TabBarIndicatorSize.label,
                    labelColor: colors.textColor,
                    unselectedLabelColor: colors.greyColor,
                    isScrollable: true,
                    tabs: const [
                      Text(
                        "Gaming",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Text(
                        "Travel",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Text(
                        "Tech",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Text(
                        "Education",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ];
        },
        body: TabBarView(
          controller: _tabController,
          children: [
            ListView.builder(
              itemCount: 5,
              itemBuilder: (_, int index) {
                return Container(
                  margin: const EdgeInsets.only(top: 16.0),
                  child: Container(
                    margin: const EdgeInsets.only(right: 16, left: 16),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 60,
                          width: 89,
                          child: Image(
                            image:
                                AssetImage("assets/images/product-image.png"),
                          ),
                        ),
                        const SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "\$65,99",
                              style: TextStyle(
                                fontSize: 17,
                                height: 1.1,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "Product Name",
                              style: TextStyle(
                                fontSize: 17,
                                height: 1.1,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
            Container(),
            Container(),
            Container(),
          ],
        ),
      ),
    );
  }
}
