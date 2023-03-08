import 'package:flutter/material.dart';

import 'package:fl_components/widgets/widget.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Card Widget"),
          centerTitle: true,
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            CustomCardType1(),
            SizedBox(
              height: 10,
            ),
            CustomCardType2(
              name: "Parque Nacional Los Haitises",
              imageUrl:
                  'http://www.godominicanrepublic.com/wp-content/uploads/2017/12/los-haitises-saman.jpg',
            ),
            SizedBox(height: 10),
            CustomCardType2(
              name: "Parque Nacional Sierra de Bahoruco",
              imageUrl:
                  'https://gobarahona.com/wp-content/uploads/2019/04/bg-hero-1024x665.jpg',
            ),
            SizedBox(height: 10),
            CustomCardType2(
              name: "Parque Nacional Monte Cristi",
              imageUrl:
                  'https://images.visitarepublicadominicana.org/parque-nacional-monte-cristi-republica-dominicana.jpg',
            ),
            SizedBox(height: 10),
            CustomCardType2(
              name: "Parque Nacional Submarino de la Caleta",
              imageUrl:
                  'https://colorvision.com.do/wp-content/uploads/2018/11/lacaleta1.jpg',
            ),
          ],
        ));
  }
}
