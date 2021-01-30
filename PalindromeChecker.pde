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
  String sWord = onlyLetters(word);
  sWord= noCapitals(sWord);
  sWord= noSpaces(sWord);
  if (sWord.equals(reverse(sWord)))
  return true;
  else
  //your code here
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    //your code here
  String s = "";
  if(str.length()!=0){
  for(int i= str.length();i>0;i--){
  s = s+str.charAt(i-1);
    }
  }
    return sNew;
}
 public String noCapitals(String sWord){
  return sWord .toLowerCase();
}

  public String noSpaces(String sWord){
  if (sWord.length()==0){
    return "";
  }
  String ans="";
  for (int i=0; i<sWord.length();i++){
  if (sWord.charAt(i)!=' '){
    ans+=sWord.charAt(i);
      }
    }
    return ans;
  }

  public int numLetters(String sString){
  int count= 0;
  for(int i=0; i<sString.length();i++){
  if(Character.isLetter(sString.charAt(i)) == true){
    count++;
    }
  }
  return count;
}
  public String onlyLetters(String sString){
  String x= "";
  for(int i= 0;i< sString.length();i++){
    if(Character.isLetter(sString.charAt(i))){
      x=x+sString.charAt(i);
    }
  }
  return x;
}



