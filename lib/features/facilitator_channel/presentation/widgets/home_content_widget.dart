import 'package:facilitator/features/facilitator_channel/presentation/widgets/video_content_item_widget.dart';
import 'package:facilitator/features/facilitator_channel/presentation/widgets/video_content_list.dart';
import 'package:flutter/material.dart';

class HomeContentWidget extends StatelessWidget {
  const HomeContentWidget({super.key});
  @override
  Widget build(BuildContext context) {
    // bool hasProducts = true;

    return Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * .70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              VideoContentList(
                categoryLabel: "Recent Videos",
                items: List.generate(
                  4,
                  (index) => VideoContentItemWidget(
                    numberOfLikes: "200",
                    numberOfComments: "200",
                    numberOfViews: "300k Views",
                    onComment: () {},
                    onLike: () {},
                    lastViewed: "3 months ago",
                    label: "How to run a coffee Business",
                    image: Image.asset(
                      "assets/images/coffee.png",
                      width: 140,
                    ),
                  ),
                ),
              ),
              Center(
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_drop_down,
                    size: 30,
                  ),
                ),
              ),
              VideoContentList(
                categoryLabel: "Most Watched",
                items: List.generate(
                  4,
                  (index) => VideoContentItemWidget(
                    numberOfLikes: "200",
                    numberOfComments: "200",
                    numberOfViews: "300k Views",
                    onComment: () {},
                    onLike: () {},
                    lastViewed: "3 months ago",
                    label: "How to run a coffee Business",
                    image: Image.asset(
                      "assets/images/coffee.png",
                      width: 140,
                    ),
                  ),
                ),
              ),
              Center(
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_drop_down,
                    size: 30,
                  ),
                ),
              ),
            ],
          ),
        )
        // : const NoProducts()
        );
  }
}
