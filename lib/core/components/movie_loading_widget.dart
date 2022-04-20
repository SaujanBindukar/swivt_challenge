import 'package:flutter/material.dart';
import 'package:swivt_challenge/core/components/custom_shimmer.dart';
import 'package:swivt_challenge/core/theme/app_colors.dart';

class MovieLoadingWidget extends StatelessWidget {
  const MovieLoadingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: ListView.builder(
            itemCount: 10,
            physics: const AlwaysScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return CustomShimmer(
                baseColor: AppColors.transparentColor,
                highlightColor: Colors.grey.shade100,
                widget: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 10,
                  ),
                  margin: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
