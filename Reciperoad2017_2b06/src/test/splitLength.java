package test;

import java.util.Scanner;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class splitLength {

	public static void main(String[] args) {
		String str="강진읍 소리 77-27";
		String str1= str.split("[-]")[0];
		System.out.println("split 1은 ="+str1);
	}

}
