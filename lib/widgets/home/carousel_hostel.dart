
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/controller/bloc/indicator_controller_bloc.dart';
import 'package:task/data/dummy_data.dart';

class KCarouselContainer extends StatelessWidget {
  const KCarouselContainer({
    super.key, required this.state,
  });

  final PageIndicatorState state;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 200,
        child: CarouselSlider.builder(
          itemCount: 6,
          itemBuilder: (context, index, realIndex) {
            return Container(
              height: 150,
              width: 200,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: AssetImage(DummyData.hostelImage[index]),
                      fit: BoxFit.cover)),
            );
          },
          options: CarouselOptions(
            onPageChanged: (index, reason) {
              state.page = index;
              BlocProvider.of<PageIndicatorBloc>(context)
                  .add(PageIndicatorEvent());
            },
            autoPlay: true,
            viewportFraction: 0.6,
          ),
        ));
  }
}
