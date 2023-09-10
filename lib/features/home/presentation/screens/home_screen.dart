import 'package:api_exam/core/utils/app_colors.dart';
import 'package:api_exam/core/utils/app_icons.dart';
import 'package:api_exam/core/utils/app_strings.dart';
import 'package:api_exam/features/home/presentation/components/image_component.dart';
import 'package:api_exam/features/home/presentation/home_cubit/home_cubit.dart';
import 'package:api_exam/features/home/presentation/home_cubit/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        final homeCubit = BlocProvider.of<HomeCubit>(context);
        return Scaffold(
          appBar: AppBar(
            backgroundColor: AppColors.purple,
            title: const Text(AppStrings.cats),
            centerTitle: true,
            actions: [
              Row(
                children: [
                  const Text(AppStrings.refresh),
                  IconButton(
                    onPressed: () {
                      homeCubit.getAllCats();
                    },
                    icon: AppIcons.refresh,
                  ),
                ],
              ),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(10),
            child: MasonryGridView.count(
              crossAxisCount: 3,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Tooltip(
                  message: state is GetCatsSuccessState
                  ? homeCubit.cats[index]['id']
                  : '',
                  child: ImageComponent(
                    image: index,
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
