import 'package:flutter/material.dart';
import 'package:musique_ui/widgets/usefull.widgets.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  SizedBox(
                      height: 60,
                      width: 80,
                      child: UsefullWidget(myChild: Icon(Icons.arrow_back))),
                  Text('P L A Y L I S T'),
                  SizedBox(
                      height: 60,
                      width: 80,
                      child: UsefullWidget(myChild: Icon(Icons.menu))),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            UsefullWidget(
                myChild: Column(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      'lib/images/sambaNdongo.jpg',
                    )),
                Column(
                  children: const [
                    Text(
                      'Ndongo',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text('Samba Peuzzi')
                  ],
                )
              ],
            )),
            const SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text('0:00'),
                Icon(Icons.shuffle),
                Icon(Icons.repeat),
                Text('4:22')
              ],
            ),
            const SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 12.0,right: 12.0),
              child: UsefullWidget(myChild: LinearPercentIndicator(
                lineHeight: 5,
                percent:0.8,
                progressColor: Colors.green,
                backgroundColor: Colors.transparent,
              ),),
            ),
            const SizedBox(height: 35,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                   Expanded(child: UsefullWidget(myChild: Icon(Icons.skip_previous),)),
                   Expanded(flex: 2,child: Padding(
                     padding: EdgeInsets.symmetric(horizontal: 20),
                     child: UsefullWidget(myChild: Icon(Icons.play_arrow_rounded) ),
                   ),),
                   Expanded(child: UsefullWidget(myChild: Icon(Icons.skip_next),))
                ],
              ),
            )
          ],
        ));
  }
}
