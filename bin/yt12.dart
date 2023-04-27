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

String fmt(int number) {
  return number.toString().padLeft(2, '0');
}


void main() {
  for (int i = 23; i >= 0; i--) {
    for (int j = 59; j >= 0; j--) {
      for (int k = 59; k >= 0; k--) {
        String hour = fmt(i);
        String minute = fmt(j);
        String second = fmt(k);
        String time = ('$hour:$minute:$second');
        if (time == '00:00:10') {
          time = 'TEN!';
        }
        if (time == '00:00:09') {
          time = 'NINE!';
        }
        if (time == '00:00:08') {
          time ='EIGHT!';
        }
        if (time == '00:00:07') {
          time = 'SEVEN!';
        }
        if (time == '00:00:06') {
          time = 'SIX!';
        }
        if (time == '00:00:05') {
          time = 'FIVE!';
        }
        if (time == '00:00:04') {
          time = 'FOUR!';
        }
        if (time == '00:00:03') {
          time = 'THREE!';
        }
        if (time == '00:00:02') {
          time = 'TWO!';
        }
        if (time == '00:00:01') {
          time = 'ONE!';
        }
        if (time == '00:00:00') {
          time = 'HAPPY NEW YEAR!';
        }
        print(time);
      }
    }
  }
}


