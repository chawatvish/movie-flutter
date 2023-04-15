import 'package:flutter/material.dart';
import 'package:movie_app/constraint/color.dart';
import 'package:movie_app/constraint/textstyle.dart';

class SearchBox extends StatelessWidget {
  final double? height;
  final void Function()? onTapHandler;

  const SearchBox({Key? key, this.height = 42.0, this.onTapHandler})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapHandler,
      child: Container(
        height: height,
        decoration: BoxDecoration(
            color: ColorConstraint.searchBoxBackgroundColor,
            borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Search",
                style: TextStyleConstraint.body
                    .copyWith(color: ColorConstraint.searchBoxElementColor),
              ),
              const Icon(
                Icons.search,
                color: ColorConstraint.searchBoxElementColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}
