public void setup()
{
  String lines[] = {"test","rotator","rewriter","nurses run",
  "Madam,I'm Adam!","Man! A Plan! A Canal! Panama!"};
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String xWord= onlyLetters(word);
  String yWord= noCapitals(xWord);
  String zWord= reverse(yWord);
  if (onlyLetters(yWord).equals(zWord))
  return true;
  else
  //your code here
  return false;
}
public String reverse(String word)
{
    String sWord = new String();
    //your code here
  for(int i= word.length()-1;i>=0;i--){
  sWord = sWord+word.charAt(i);
    }
    return sWord;
  }
 
 public String noCapitals(String word){
  return word .toLowerCase();
}
  public int numLetters(String word){
  int count= 0;
  for(int i=0; i<word.length();i++){
  if(Character.isLetter(word.charAt(i)) == true){
    count++;
    }
  }
  return count;
}
  public String onlyLetters(String word){
  String x= "";
  for(int i= 0;i< word.length();i++){
    if(Character.isLetter(word.charAt(i))==true){
      x=x+word.charAt(i);
    }
  }
  return x;
}
