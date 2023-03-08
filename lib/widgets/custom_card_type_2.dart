import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      //Este metodo hace que todos los cards tengan el mismo size
      clipBehavior: Clip.antiAlias,
      //Redondear borde
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 2,
      child: Column(
        children: [
          const FadeInImage(
            image: NetworkImage(
                "https://photographylife.com/wp-content/uploads/2017/01/What-is-landscape-photography.jpg"),
            placeholder: AssetImage("assets/jar-loading.gif"),
            width: double.infinity,
            height: 230,
            //Esto se utiliza para que la imagen se adapta a todo el widget posible
            fit: BoxFit.cover,
            fadeInDuration: Duration(milliseconds: 300),
          ),
          Container(
              //Posicion del texto
              alignment: AlignmentDirectional.centerEnd,
              //Distancia del texto
              padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
              child: Text("A beatiful view"))
        ],
      ),
    );
  }
}
