def FirstReverse(str)
  str.reverse
end

def FirstFactorial(num)
  i = num - 1
  if num<=1
    return 1
   end
  while i > 1
    num = num * i
    i -= 1
  end
  return num   
 end

 def LongestWord(sen)
  arr = sen.split(" ") 
  arr.sort! do |a, b| b.length<=>a.length end
  sen = arr[0]
end

def LetterChanges(str)

  alphabet = ('a'..'z').to_a
  vowels = ["a","e","i","o","u"]
  str = str.split('')
  
  str = str.collect do |letter| 
    alphabet.include?(letter) ? letter.next : letter
  end
  
  str = str.collect do |letter| 
    vowels.include?(letter) ? letter.upcase : letter
  end
  
  str.join
         
end

def SimpleAdding(num)
  (0...num).each do |i|
    num += i
  end
  return num     
end

def LetterCapitalize(str)
  arr1 = str.split(" ")
  arr2 = []
  arr1.each do |i|
    arr2 << i.split(//)
  end
  
  arr2.collect! do |i|
    i[0].upcase!
    i.join
  end
  
  arr2.join(" ")
         
end

def SimpleSymbols(str)

  letters = str.scan(/[A-Za-z]/)
  count = 0
  
  str.split(//).each_cons(3) do |cons|
    if cons.join =~ /\+[A-Za-z]\+/
      count += 1
    end
  end
  
  return true if letters.length == count
  return false
         
end

def CheckNums(num1,num2)
  if num2 > num1
    return true
  elsif num1 == num2
    return "-1"
  else
    return false
  end
end

def TimeConvert(num)
  hr = num / 60
  min = num % 60
  return "#{hr}:#{min}"   
end

def AlphabetSoup(str)
  str = str.split(//).sort.join      
end

def ABCheck(str)
  
  if (str.include? "a") && (str.include? "b")
    index_a = str.index("a")
    index_b = str.index("b")
    
    if index_b == (index_a + 3) || (index_a - 3)
      str = true
      else 
      str = false
    end
  else
    str = false
  end
  
  return str 
         
end

def VowelCount(str)
  i = 0
  str = str.split(//)
  str.each do |l|
    if (l == "a") || (l == "e") || (l == "i") || (l == "o") || (l == "u")
      i += 1
      end
    end

  return i
end

def WordCount(str)
  str = str.split(" ")
  return str.length
end

def ExOh(str)
  
  checker = false
  o = str.count("o")
  x = str.count("x")
  
  if o == x
    checker = true
    end
  
  return checker
         
end

def Palindrome(str)
  if str == str.reverse!
    return true
  else
    return false
  end  
end

def ArithGeo(arr)
  arith = []
  geo = []
  
  arr.each_with_index do |int, index|
    break if int == arr[-1]
    arith << arr[index+1] - int
    geo << arr[index+1] / int
  end
  puts arith, geo
  if arith.uniq.length == 1
    return "Arithmetic"
  elsif geo.uniq.length == 1
    return "Geo"
  else
    return -1
  end
         
end

def ArrayAdditionI(arr)
  largest = arr.sort!.pop
  sum = arr.inject (0) {|sum, i| sum + i}
  
  if sum == largest
    true
  else
    false
  end
         
end

#LetterCountI

def SecondGreatLow(arr)
  arr.sort!
  
  return "#{arr[1]} #{arr[-2]}"
end

#DivisionStringified

#CountingMinutesI

def MeanMode(arr)
  
  mean = (arr.inject(0) {|sum, i| sum + i}) / arr.length
  mode = 0
  arr.each do |int|
    if arr.count(int) > mode
      mode = int
    end
  end

  mode = 0 if mode == 1
  
  return 1 if mode == mean
  return 0 if mode != mean
         
end

#DashInsert

def SwapCase(str)
  str = str.split('')
  str.each do |l|
    if l.downcase == l
      l.upcase!
      else
      l.downcase!
      end
    end
  str.join      
end

#NumberAddition

#ThirdGreatest

def PowersofTwo(num)
  num.downto(0) do |i|
    puts i
    if i ** 2 == num
      return "true"
    end
  end
  
  return "false"
end

#AdditivePersistence

# def MultiplicativePersistence(num)
  
#   arr = []
#   count ||= 0

#   num.to_s.split(//).each do |i|
#     arr << i.to_i
#   end
  
#   new_num = arr.reduce(:*).to_s.split(//)

#   while new_num.length > 1
#     new_num = new_num.each {|i| }
#   end
         
# end

def OffLineMinimum(*args)
  arr = args.to_a
  
  new_arr = []
  temp_arr = []
  
  arr.each do |i|
    if "1234567890".include?(i)
      temp_arr << i
    elsif i == "E"
      temp_arr.sort!
      new_arr << temp_arr.shift
    end
  end
  
  return new_arr
end