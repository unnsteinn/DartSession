/*
  The clock!

  Can you print a clock? Basically, create every hour, minute, second of a clock.
  Ie

  Create nested for loops!

  One that counts from 0-23 (HOURS)
  Another that counts from 0-59 (MINUTE)
  And another that also counts from 0-59 (MONTH)

  And print every minute of the day. From 00:00:00 -> 23:59:59

  HINT: To make the program more readable to your, call your variables in
        each for loop something understandable, like for(int hour ....)

  HINT: You WILL have the issue of wanting to print 01 for example, but that's
        hard to do with a simple print statement. You will have to pad the number.
        You can pad a number, so that if its only 1 digit, it will get a 0 prefix
        with the following command

        int idx = 1;
        print(idx.toString().padLeft(2, '0'));

        This prints out 01!
        If you set idx=10, you will simply get 10.

 */


void main(){
  // Just remove this code when you are ready, I'll leave it here
  // so you can try it out.
  int idx = 10;
  String converted = idx.toString().padLeft(2, '0');
  print('Wow.. $idx became $converted');
}