
import 'package:flutter/material.dart';
import 'package:task/constants/size.dart';
import 'package:task/data/dummy_data.dart';
import 'package:task/presentation/home/home_detailed_screen.dart';

class KBottomSheet extends StatelessWidget {
  const KBottomSheet({
    super.key,
    required int selected,
  }) : _selected = selected;

  final int _selected;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 380,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Sort by', style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              IconButton(
                icon : const Icon(Icons.close, 
                size: 35,
                color: Colors.grey, ),
                onPressed: ()=> Navigator.pop(context),
                )
            ],
          ),
          const SizedBox(height: 10,),
          const Divider(),
          KSizes.kHeight,
          ListView.builder(
            shrinkWrap: true,
            itemCount: DummyData.listImage.length,
            itemBuilder: (context, index) {
              return ListTile(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const DetailedListColleges(),)),
                leading: SizedBox(
                  height: 25,
                  width: 25,
                  child: Center(child: Image.asset(DummyData.listImage[index], fit: BoxFit.cover,))),
                title: Text(DummyData.listTitle[index], style: const TextStyle(fontWeight: FontWeight.bold),),
                trailing: Radio(value: index, groupValue: _selected, onChanged: (value) {
                },),
              );
            },),
        ],
      ),
    );
  }
}
