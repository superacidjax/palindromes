require_relative 'palindrome_calculator'

def find_longest_palindrome_test
  test_string = 'abba'
  pal_cal = PalindromeCalculator.new(test_string)
  result = pal_cal.find_longest_palindrome(test_string)
  result == [0, 4]
end

puts find_longest_palindrome_test
