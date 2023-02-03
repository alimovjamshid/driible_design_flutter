import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled8/util/Exercise_tile.dart';
import '../util/EmoticonFace.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      body: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              //greetings row
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hi, Jamshid!',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: ScreenUtil().setSp(24),
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            SizedBox(
                              height: ScreenUtil().setHeight(5),
                            ),
                            Text(
                              '03 February, 2023',
                              style: TextStyle(
                                  color: Colors.blue[200]
                              ),
                            )
                          ],
                        ),

                        //notification
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.blue[600],
                              borderRadius: BorderRadius.circular(12)
                          ),
                          padding: EdgeInsets.all(12),
                          child: Icon(
                            Icons.notifications,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),

                    SizedBox(
                      height: ScreenUtil().setHeight(20),
                    ),

                    //search bar
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.blue[600],
                          borderRadius: BorderRadius.circular(12)
                      ),
                      padding: EdgeInsets.all(12),
                      child: Row(
                        children: [
                          Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: ScreenUtil().setWidth(10),
                          ),
                          Text(
                            'Search',
                            style: TextStyle(
                                color: Colors.white
                            ),
                          )
                        ],
                      ),
                    ),

                    SizedBox(
                      height: ScreenUtil().setHeight(20),
                    ),

                    //how do you feel?

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'How do you feel?',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: ScreenUtil().setSp(18)
                          ),
                        ),
                        Icon(
                          Icons.more_horiz,
                          color: Colors.white,
                        )
                      ],
                    ),

                    SizedBox(
                      height: ScreenUtil().setSp(20),
                    ),

                    //4 different face

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        //bad
                        EmoticonFace(
                          emolutionFace: '😫',
                          name: 'Bad',
                        ),

                        //fine
                        EmoticonFace(
                          emolutionFace: '☺',
                          name: 'Fine',
                        ),

                        //well
                        EmoticonFace(
                          emolutionFace: '😃',
                          name: 'Well',
                        ),

                        //excellent
                        EmoticonFace(
                          emolutionFace: '🥳',
                          name: 'Excellent',
                        ),

                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 25,
              ),

              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12)
                  ),
                  child: Container(
                    color: Colors.grey[200],
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Center(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 12,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Excercises',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20
                                ),
                              ),
                              Icon(Icons.more_horiz)
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),

                          //listview
                         Expanded(
                             child: ListView(
                               children: [
                                 Exercise_tile(
                                   icon: Icons.favorite,
                                   exerciseName: "Speaking Skills",
                                   numberExercise: 16,
                                   color: Colors.orange,
                                 ),
                                 Exercise_tile(
                                   icon: Icons.person,
                                   exerciseName: "Reading Skills",
                                   numberExercise: 8,
                                   color: Colors.red,
                                 ),
                                 Exercise_tile(
                                   icon: Icons.favorite,
                                   exerciseName: "Writing Skills",
                                   numberExercise: 20,
                                   color: Colors.deepPurple,
                                 ),
                               ],
                             )
                         )

                        ],
                      ),
                    ),
                  ),
                ),
              )

            ],
          ),
      ),
    );
  }
}
