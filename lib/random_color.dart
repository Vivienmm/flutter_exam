import 'dart:ui';
import 'dart:math' as math;
/// * @author Suyw
/// * @description:
/// * @date :2021/3/10
 class RandomColor {
   int random(int min, int max) {
     final _random = math.Random();
     return min + _random.nextInt(max - min + 1);
   }

   Color randomColor() {
     return Color.fromARGB(
         random(150, 255), random(0, 255), random(0, 255), random(0, 255));
   }
 }