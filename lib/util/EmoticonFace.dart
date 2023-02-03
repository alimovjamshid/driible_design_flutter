import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmoticonFace extends StatelessWidget {
  final String emolutionFace;
  final String name;

  const EmoticonFace({
    Key? key,
    required this.emolutionFace,
    required this.name
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.blue[200],
            borderRadius: BorderRadius.circular(12)
          ),
          padding: EdgeInsets.all(16),
          child: Center(
            child: Text(
              emolutionFace,
              style: TextStyle(
                fontSize: ScreenUtil().setSp(20)
              ),
            ),
          ),
        ),

        SizedBox(
          height: ScreenUtil().setHeight(5),
        ),

        Text(
            name,
          style: TextStyle(
            fontSize: ScreenUtil().setSp(16),
            color: Colors.white
          ),
        )
      ],
    );
  }
}
