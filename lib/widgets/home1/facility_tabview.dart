
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/constants/colors.dart';
import 'package:task/constants/size.dart';
import 'package:task/controller/bloc/indicator_controller_bloc.dart';
import 'package:task/widgets/home/bed_container.dart';
import 'package:task/widgets/home/carousel_hostel.dart';
import 'package:task/widgets/home/facility_container.dart';
import 'package:task/widgets/home1/name_and_rating.dart';

class HostelFacilityTab extends StatelessWidget {
  const HostelFacilityTab({
    super.key, required this.name, required this.text,
  });

  final String name;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        KSizes.kHeight1,
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            KSizes.KWidth,
            KSizes.KWidth,
            KSizes.KWidth,
            KBedContainer(),
          ],
        ),
        KSizes.kHeight1,
        BlocBuilder<PageIndicatorBloc, PageIndicatorState>(
          builder: (context, state) {
            return KCarouselContainer( state: state);
          },
        ),
        KSizes.kHeight,
        BlocBuilder<PageIndicatorBloc, PageIndicatorState>(
          builder: (context, state) {
            return DotsIndicator(
              dotsCount: 6,
              position: state.page,
              decorator: const DotsDecorator(
                color: Colors.grey,
                activeColor: Colors.blue,
                size: Size.square(8.0),
                activeSize: Size(10.0, 8.0),
              ),
            );
          },
        ),
        KSizes.kHeight1,
        KNameAndRating(collegeName: name, text: text),
        const ListTile(
          contentPadding: EdgeInsets.zero,
          leading: Icon(Icons.location_on_outlined,),
          title: Text('LoremIpsumaofiheowh OS wkh', style: TextStyle(fontSize: 14, color: KColors.primaryColor),),
        ),
        const SizedBox(
          child: Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Neque accumsan, scelerisque eget lectus ullamcorper a placerat. Porta cras at pretium varius purus cursus. Morbi justo commodo habitant morbi quis pharetra posuere mauris. Morbi sit risus, diam amet volutpat quis. Nisl pellentesque nec facilisis ultrices.'
          ),
        ),
        KSizes.kHeight1,
        const Row(
          children: [
            Text(
              'Facilities',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ],
        ),
        const KFacilityList()
      ],
    );
  }
}
