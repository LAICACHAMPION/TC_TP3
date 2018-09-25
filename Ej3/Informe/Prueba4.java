import java.util.LinkedList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Prueba4 {
	public static void main(String[] args) {

		String trans = ""; //aqui va la funcion de transferencia de 6500 caracteres
		
		String[] num_den = trans.split("/");
		
		String num = num_den[0];	
		String den = num_den[1];
		
		String pat = "(s(\\^\\d)?)";

		impimir_pols(num, pat, "Numerador");
		System.out.println("\n\n\n");
		impimir_pols(den, pat, "Denominador");
	}
	
	public static int max(int int1, int int2){
		return ((int1>int2) ? int1: int2);
	}
	
	public static void impimir_pols(String exp, String pat, String nom_exp){
		
		String[] subs = exp.split(pat);
	
		Pattern p = Pattern.compile(pat);
		Matcher m = p.matcher(exp);
		LinkedList<String> pols = new LinkedList<String>();
		
		while(m.find())
			pols.add(m.group(0));
			
		System.out.println(nom_exp + ":");
		
		for(String s: subs){
			if(!pols.isEmpty())
				System.out.println(pols.removeFirst()+":\t " + s  );
			else
				System.out.println("ind:\t " + s );
		}
	}
}
