/*
   Write a program that starts a countdown to new-years eve - starting from
   23:58:00

   You should print out each second until the clock strikes midnight

   Count-down
   00:02:00
   00:01:59
   00:01:58
   .....

   When 10 seconds are left, stop writing out the time and print out text
   TEN!
   NINE!
   ...
   HAPPY NEW YEAR!!!!
 */

String fmt(int number){
  return number.toString().padLeft(2, '0');
}

//  10 - 9 - 8 ... 0
String countdown(int second){
  List<String> numberAsString = [
    'TEN!',
    'NINE!',
    'EIGHT!',
    'SEVEN',
    'SIX',
    'FIVE',
    'FOUR',
    'THREE',
    'TWO',
    'ONE',
    'HAPPY NEW YEAR'
  ];

  return numberAsString.reversed.toList()[second];
}


void main(){

  print('00:02:00');
  for(int hour=0; hour >=0; hour--){
    for(int minute=1; minute>=0; minute--){
      for(int second=59; second>=0; second--){
        bool condition1 = hour == 0;
        bool condition2 = minute == 0;
        bool condition3 = second <= 10;

        if(condition1 && condition2 && condition3){
          print(countdown(second));
        } else {
          print('${fmt(hour)}:${fmt(minute)}:${fmt(second)}');
        }

      }
    }
  }

}