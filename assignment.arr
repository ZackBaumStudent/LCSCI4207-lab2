import file("lab2-support.arr") as support


#Testing encryptors
support.encryptor1("abcdefg")
#1 = repeat string 5 times

# Test: "abcdefg" -> "abcdefgabcdefgabcdefgabcdefgabcdefg"

support.encryptor2("abcdee")
#2 must be 4 characters, as it returns the first 4 characters in the string 

# Test: "abcdee" -> "abcd"


support.encryptor3("abcdefghijklmnopqrstuvwxyz")
#2 prints the exact string, with no minimum limit of characters, similar to encryptor 2 but without the character limit

# Test: "ab" -> "ab"


support.encryptor4("abcdefg")
#repeats only the first 4 characters of the string 5 times, similar to encryptor 1 but with a character limit

# Test: "abcdefg" -> "abcdabcdabcdabcdabcd"


support.encryptor5("abcdefg aeiou")
#prints the string normally, BUT it changes the vowels of the string to the letter after that string, i.e (a->b) (e->f) etc. 

# Test: "abcdefg aeiou" -> "bbcdffg bfjpv"

support.encryptor6("ABCDEFGHIJKLMNOPQRSTUVWXYZ")
#prints the entire string as lowercase and removes the letter r

# Test: "ABCDEFGHIJKLMNOPQRSTUVWXYZ" -> "abcdefghijklmnopqstuvwxyz"

support.encryptor7("KWFFD")
#prints the number of characters in the string

# Test: "KWFFD" -> 5

support.encryptor8("abAAc")
# prints the string,then adds 3 exlamation points at the end, and repeats that 3 times

# Test: "abAAc" -> "abAAc!!!abAAc!!!abAAc!!!"

support.encryptor9("zsdfsdf")
#Takes the first character of the string, and takes its place on the alphabet, i.e(a=1, z=26) and adds 96 to it.

# Test: "zsdfsdf" -> 122 (z = 26, 26 + 96 = 122)

support.encryptor10("abcd")

#Needs a minimum of 4 characters, repeats the first 4 characters of the string 5 times, but any voewls in the string get changed to the letter after them like encryptor 5 

# Test: "abcd" -> "bbcdbbcdbbcdbbcdbbcd", 

#My functions

#1
fun my-encryptor1(s :: String) -> String:
  doc: "Repeats the input string 5 times"
  string-repeat(s, 5)
end

my-encryptor1("s")

support.test-encryptor1(my-encryptor1)

#2
fun my-encryptor2(s :: String) -> String:
    doc: "returns the first 4 characters in the string"
    string-substring(s, 0,4)
end

my-encryptor2("abcd")

support.test-encryptor2(my-encryptor2)

#3 
fun my-encryptor3(s :: String) -> String:
  doc: "Returns the same string as the input with no character limit"
  (s)
end

my-encryptor3("abcdefg")

support.test-encryptor3(my-encryptor3)

#4
fun my-encryptor4(s :: String) -> String:
  doc:"repeats only the first 4 characters of the string 5 times, similar to encryptor 1 but with a character limit"
  string-repeat(string-substring(s, 0, 4), 5)
end

my-encryptor4("abcdefg")

support.test-encryptor4(my-encryptor4)

#5
fun my-encryptor5(s :: String) -> String:
  doc:"prints the string normally, BUT it changes the vowels of the string to the letter after that string, i.e (a->b) (e->f) etc."
  step1 = string-replace(s, "a", "b")
  step2 = string-replace(step1, "e", "f")
  step3 = string-replace(step2, "i", "j")
  step4 = string-replace(step3, "o", "p")
  step5 = string-replace(step4, "u", "v")
  step6 = string-replace(step5, "A", "B")
  step7 = string-replace(step6, "E", "F")
  step8 = string-replace(step7, "I", "J")
  step9 = string-replace(step8, "O", "P")
  step10 = string-replace(step9, "U", "V")
  step10
end

my-encryptor5("abcdefghijklmnopqrstuvAEIOU")
  
  support.test-encryptor5(my-encryptor5)

#6


