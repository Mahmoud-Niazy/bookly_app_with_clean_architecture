import 'package:bookly_with_clean_architecture/core/function/navigation.dart';
import 'package:bookly_with_clean_architecture/core/widgets/custom_icon_button.dart';
import 'package:bookly_with_clean_architecture/features/home/presentation/view/widgets/home_details_view_body.dart';
import 'package:flutter/material.dart';

class HomeDetailsView extends StatelessWidget {
  const HomeDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CustomIconButton(
          icon: Icons.arrow_back,
          onPressed: (){
            navigatePop(context: context);
          },
          size: 25,
        ),
      ),
      body: const HomeDetailsViewBody(),
    );
  }
}
