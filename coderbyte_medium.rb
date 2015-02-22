def FibonacciChecker(num)

  return "yes" if num == 0 || num == 1

  fib0 = 0
  fib1 = 1
  fib2 = nil
  
  fibs = []
  
  fibs << fib0
  fibs << fib1
  
  until fibs.length == num
    fib2 = fib0 + fib1
    fibs << fib2
    fib0 = fib1
    fib1 = fib2
  end
    
return "yes" if fibs.include? num
return "no"
  
end

def PalindromeTwo(str)

  str = str.downcase
  str = str.split(//)
  
  new_str = []
  
  str.each do |i|
    if "abcdefghijklmnopqrstuvwxyz".include?(i)
      new_str << i
    end
  end
  
  return true if new_str.join == new_str.join.reverse
  return false
         
end

def StringScramble(str1,str2)
  arr1 = str1.split(//).sort
  arr2 = str2.split(//).sort
  
  i = 0
  
  arr1.each do |letter|
    if str2.include?(letter)
      i+=1
    end
  end
  
  return true if i == str1.length
  
  i = 0
  
  arr2.each do |letter|
    if str1.include?(letter)
      i+=1
    end
  end
  
  return true if i == str2.length
  
  return false
  
         
end

def DistinctList(arr)

  old_arr = arr
  new_arr = arr.uniq
  
  return old_arr.length - new_arr.length
         
end

def NumberSearch(str)

  str = str.split(//)
  
  nums = []
  
  str.each do |i|
    if "1234567890".include?(i)
      nums << i.to_i
    end
  end
  
  letters = []
  
  str.each do |i|
    i.downcase!
    if "abcdefghijklmnopqrstuvwxyz".include?(i)
      letters << i
    end
  end
  
  p nums
  p letters
  
 nums.reduce(:+) / letters.length
         
end


def LetterCount(str)

  arr = str.split(" ")
  
  arr.collect! do |word|
    word.split(//)
  end
  
  greatest = 0
  greatest_word = ''
  
  arr.each do |word|
    word.each do |letter|
      if word.count(letter) > greatest
        greatest = word.count(letter)
        greatest_word = word
      end
    end
  end
  
  return -1 if greatest == 1
  return greatest_word.join
end

def Consecutive(arr)

  arr.sort!
  num_of_nums = 0
  new_arr = []
  i = 0
  arr.each do
    return new_arr.reduce(:+) if i == arr.length - 1
    num_of_nums = (arr[i+1] - arr[i]) - 1
    new_arr << num_of_nums
    i+=1
  end
  
end

def TripleDouble(num1,num2)

  arr1 = num1.to_s.split(//)
  arr2 = num2.to_s.split(//)
  
  
  triples = []
  
  arr1.each_with_index do |num, index|
    break if index == arr1.length - 2
    if num == arr1[index+1] && num == arr1[index+2]
      triples << num
    end
  end

  doubles = []

  arr2.each_with_index do |num, index|
    break if index == arr2.length - 1
    if num == arr2[index+1]
      doubles << num
    end
  end

  if doubles.length > 0 && triples.length > 0
    if triples.uniq.length > 1
      triples.each do |triple|
        if triple.to_i == doubles.join.to_i
          return 1
        end
      end
    end
    return 1 if triples.uniq.join.to_i == doubles.join.to_i
  else

  return 0
end
end

def DashInsertII(num)

  array = num.to_s.split(//)
  
  new_array = []
  
  array.each_with_index do |digit, index|
    new_array << digit
    break if index == array.length - 1
    if digit.to_i % 2 == 0 && array[index+1].to_i % 2 == 0 && digit.to_i != 0
      new_array << "*"
      elsif digit.to_i % 2 == 1 && array[index+1].to_i % 2 == 1
      new_array << "-"
      end
  end
  
  new_array.join
         
end

def MultipleBrackets(str)
  return 1 if !(str.include?("(")) || !(str.include?(")")) || !(str.include?("[")) || !(str.include?("]"))
  return 0 if str.count("()[]").odd?
  
  matched = 1
  pairs = str.count("()[]") / 2
  
  return "#{matched} #{pairs}"
end