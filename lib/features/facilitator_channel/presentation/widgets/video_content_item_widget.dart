import 'package:facilitator/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class VideoContentItemWidget extends StatelessWidget {
  const VideoContentItemWidget(
      {super.key,
      required this.image,
      required this.label,
      required this.onLike,
      required this.onComment,
      required this.numberOfLikes,
      required this.numberOfComments,
      required this.lastViewed,
      required this.numberOfViews});
  final Widget image;
  final String label;
  final String numberOfViews;
  final VoidCallback onLike;
  final VoidCallback onComment;
  final String numberOfLikes;
  final String numberOfComments;
  final String lastViewed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          image,
          const SizedBox(
            width: 10,
          ),
          Flexible(
            child: Column(
              children: [
                TextWidget(
                  text: label,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
                Row(
                  children: [
                    TextWidget(
                      text: numberOfViews,
                      fontSize: 12,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    TextWidget(
                      text: lastViewed,
                      fontSize: 12,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: onLike,
                          child: Image.asset(
                            "assets/images/heart.png",
                            width: 20,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        TextWidget(
                          text: numberOfLikes,
                          fontWeight: FontWeight.w600,
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: onComment,
                          child: Image.asset(
                            "assets/images/comments.png",
                            width: 20,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        TextWidget(
                          text: numberOfComments,
                          fontWeight: FontWeight.w600,
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
        ],
      ),
    );
  }
}
