import 'package:api_exam/core/utils/app_colors.dart';
import 'package:api_exam/features/home/presentation/components/custom_shimmer.dart';
import 'package:api_exam/features/home/presentation/home_cubit/home_cubit.dart';
import 'package:api_exam/features/home/presentation/home_cubit/home_state.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageComponent extends StatelessWidget {
  const ImageComponent({
    super.key,
    required this.image,
  });
  final int image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          return Container(
            width: 100.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: AppColors.black12,
                  spreadRadius: 5,
                  blurRadius: 5,
                )
              ],
            ),
            child: state is GetCatsSuccessState
                ? ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: CachedNetworkImage(
                      imageUrl: BlocProvider.of<HomeCubit>(context).cats[image]
                          ['url'],
                      fit: BoxFit.fitWidth,
                      placeholder: (context, url) => const CustomShimmer(),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                    ),
                  )
                : const CustomShimmer(),
          );
        },
      ),
    );
  }
}
