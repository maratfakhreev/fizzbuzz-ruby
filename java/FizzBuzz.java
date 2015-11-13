/**
 * Created by SDLAssistant on 13.11.2015.
 */
public class FizzBuzz {
    public static void main(String[] args) {
        printResult();
    }

    private static void printResult(){
        StringBuilder sb = new StringBuilder();
        int[] period = new int[]{3, 2, 1, 3, 1, 2, 3};
        int periodSize = period.length;
        int next = period[0];
        int j = 0;
        for(int i = 0; i <= 10000000; i++) {
            if(i == next) {
                sb.append(printFizzBuss(j));
                j = ++j % periodSize;
                next = next + period[j];
            } else {
                sb.append(" ");
                sb.append(i);
            }
        }
        System.out.print(sb);
    }

    private static String printFizzBuss(int j){
        if(j == 1 || j == 4) {
            return " buzz";
        } else if(j == 6) {
            return " fizzbuzz";
        } else {
            return " fizz";
        }
    }
}
