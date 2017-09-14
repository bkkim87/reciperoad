package test;

import java.util.Scanner;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
 
 
public class OnlyInteger {
    
    public static void main(String[] args) {
        
        Pattern p = Pattern.compile("^[0-9]*[-]?[0-9]+$");
        
        int onlyNum;
        String inputVal;
        Scanner iStream = new Scanner(System.in);
        
        inputVal = iStream.nextLine();
        Matcher m = p.matcher(inputVal);
        
        
       System.out.println(m.find());
    }
}
