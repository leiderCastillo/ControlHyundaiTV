import 'package:control_hyundai/codes.dart';
import 'package:control_hyundai/funciones.dart';
import 'package:control_hyundai/models/bar_buttons.dart';
import 'package:control_hyundai/models/button.dart';
import 'package:control_hyundai/models/button_rectangle.dart';
import 'package:control_hyundai/models/circle_buttons.dart';
import 'package:flutter/material.dart';

class Control extends StatefulWidget {
  const Control({super.key});

  @override
  State<Control> createState() => _ControlState();
}

class _ControlState extends State<Control> {
  int contador = 0;
  @override
  Widget build(BuildContext context) {
    return 
    Padding(padding: const EdgeInsets.fromLTRB(30,50,30,20),
    child:
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Button(
                onPressed: (){sendCode(code: Codes.apagar);}, 
                icono: Icons.power_settings_new_rounded),
              const Text("Hyundai Remote",textScaleFactor: 1.3,style: TextStyle(fontWeight: FontWeight.bold,),),
              Button(
                onPressed: (){print("theme");}, 
                icono: Icons.light_mode_outlined),
            ],
          ),
          const SizedBox(height: 20,),
          Center(
            child:
            CircleButtons(
              radio: 120,
              onPressedCenter: (){sendCode(code: Codes.enter);},
              onPressedDown: (){sendCode(code: Codes.down);},
              onPressedLeft: (){sendCode(code: Codes.left);},
              onPressedRight: (){sendCode(code: Codes.right);},
              onPressedUp: (){sendCode(code: Codes.up);},
            )
          ),
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BarButtons(
                childMiddle: const Icon(Icons.volume_up_rounded),
                iconDownButton: Icons.remove,
                iconUpButton: Icons.add,
                onPressedDown: (){sendCode(code: Codes.voldown);},
                onPressedUp: (){sendCode(code: Codes.volup);},
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ButtonRectangle(onPressed: (){sendCode(code: Codes.menu);},child: const Text("Menú"),),
                  ButtonRectangle(onPressed: (){sendCode(code: Codes.sleep);},child: const Text("Sleep"),),
                  ButtonRectangle(onPressed: (){sendCode(code: Codes.canal);},child: const Text("Canal"),),
                ],
              ),
              BarButtons(
                childMiddle: const Text("CH"),
                iconDownButton: Icons.keyboard_arrow_down,
                iconUpButton: Icons.keyboard_arrow_up,
                onPressedDown: (){sendCode(code: Codes.chdown);},
                onPressedUp: (){sendCode(code: Codes.chup);},
              ),
            ],
          ),
          Padding(
            padding:const EdgeInsets.only(left: 20, right: 20),
            child:
            Row(
              children: [
                ButtonRectangle(onPressed: (){sendCode(code: Codes.mute);}, child: const Icon(Icons.volume_off_rounded)),
                const SizedBox(width: 10,),
                Expanded(
                  child:  ButtonRectangle(onPressed: (){sendCode(code: Codes.exit);}, child: const Icon(Icons.keyboard_return)),
                ),
                const SizedBox(width: 10,),
                ButtonRectangle(onPressed: (){sendCode(code: Codes.input);}, child: const Icon(Icons.menu)),
              ],
            )
          ),
        ],
      )
    );
  }
}