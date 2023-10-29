import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: SliderExample(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class SliderExample extends StatefulWidget {
  const SliderExample({super.key});

  @override
  State<SliderExample> createState() => _SliderExampleState();
}

class _SliderExampleState extends State<SliderExample> {
  double sliderValue = 100;
  double sliderRedValue = 0;
  double sliderGreenValue = 0;
  double sliderBlueValue = 0;
  // bool valueCheck = false;
  double sliderSizedValue = 10;
  bool isBold = false;
  bool islineThrough = false;
  List<TextDecoration> decoracionesTexto = [];
  // String change() {
  //   Decoration:
  //   TextDecoration.lineThrough;
  // }

  @override
  Widget build(BuildContext context) {
    String x =
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi placerat euismod lorem, quis sodales dui luctus quis. Fusce auctor velit quis leo suscipit, at ullamcorper libero volutpat. Curabitur dictum pretium ante vel porta. Nulla vel mi at orci convallis congue. Phasellus eget volutpat leo, a pharetra augue. Maecenas scelerisque nec nisl condimentum interdum. Nunc facilisis metus eget elit dignissim vestibulum. Morbi consequat arcu libero, eu pellentesque augue gravida nec. Etiam aliquet malesuada eros. Sed convallis molestie dolor id feugiat. Vestibulum pretium nulla vel leo auctor porta. Vivamus eu lectus a nunc euismod aliquet eu ac massa. Suspendisse id nisi id eros vestibulum malesuada id ut massa. Aliquam ut ante sed metus ultrices tristique ac vel ipsum. ";

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Slider Example"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                x,
                style: TextStyle(
                  color: Color.fromRGBO(sliderRedValue.toInt(),
                      sliderGreenValue.toInt(), sliderBlueValue.toInt(), 1),
                  fontSize: sliderSizedValue,
                  decoration: TextDecoration.combine(
                    // [
                    //   TextDecoration.lineThrough,
                    //   TextDecoration.overline,
                    //   TextDecoration.underline
                    // ],
                    decoracionesTexto,
                  ),

                  //  islineThrough
                  //     ? TextDecoration.lineThrough
                  //     : TextDecoration.none,
                  fontWeight: isBold ? FontWeight.bold : FontWeight.normal,

                  //4 SLIDERS
                  //1S - REDVALUE
                  //2S - GRENVALUE
                  //3S - BLUEVALUE
                  //ESTOS 3 MANEJAN EL COLOR DEL TEXTO
                  //4S - SIZE DEL TEXTO
                  //2 CHECKBOX
                  // 1CB TACHADO DEL TEXO
                  // 2CK TEXTO EN NEGRITA
                ),
              ),
              Text("Rojo"),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   crossAxisAlignment: CrossAxisAlignment.end,
              //   children: [
              //     Text(
              //       sliderValue.toStringAsFixed(0),
              //       style: TextStyle(
              //         fontSize: 150,
              //       ),
              //     ),
              //     Text(
              //       " cm",
              //       style: TextStyle(fontSize: 50),
              //     )
              //   ],
              // ),
              Slider(
                value: sliderRedValue,
                min: 0,
                max: 255,
                activeColor: Colors.red,
                inactiveColor: Colors.grey,
                thumbColor: Colors.red,
                onChanged: (rojo) {
                  sliderRedValue = rojo;
                  setState(() {});
                },
              ),
              Text("Verde"),
              Slider(
                value: sliderGreenValue,
                min: 0,
                max: 255,
                activeColor: Colors.green,
                inactiveColor: Colors.grey,
                thumbColor: Colors.green,
                onChanged: (verde) {
                  sliderGreenValue = verde;
                  setState(() {});
                },
              ),
              Text("Azui"),
              Slider(
                value: sliderBlueValue,
                min: 0,
                max: 255,
                activeColor: Colors.blue,
                inactiveColor: Colors.grey,
                thumbColor: Colors.blue,
                onChanged: (azul) {
                  sliderBlueValue = azul;
                  setState(() {});
                },
              ),
              // Text(
              //   valueCheck.toString(),
              //   style: TextStyle(fontSize: 50),
              // ),
              Slider(
                value: sliderSizedValue,
                min: 0,
                max: 30,
                onChanged: (pepito) {
                  sliderSizedValue = pepito;
                  setState(() {});
                },
              ),
              CheckboxListTile(
                value: islineThrough,
                title: Text("tachar"),
                subtitle: Text("Este es el checkbox para tachar"),
                onChanged: (juanita) {
                  islineThrough = juanita!;
                  decoracionesTexto.add(TextDecoration.lineThrough);
                  setState(() {});
                },
              ),
              CheckboxListTile(
                value: isBold,
                title: Text("Negrita"),
                subtitle:
                    Text("Este es el checkbox para hacer negrita al texto"),
                onChanged: (juanita) {
                  isBold = juanita!;
                  setState(() {});
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
