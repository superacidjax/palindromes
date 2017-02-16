class PalindromeCalculator
  def initialize(text)
    @text = text
  end

  def find_longest_palindrome(text)
    text.length.downto(1) do |n|
      pal = text.downcase.chars.each_cons(n).find { |b| b == b.reverse }
      return calculate_index_and_size(pal, text) if pal
    end
  end

  def calculate_index_and_size(pal, text)
    indices = text.chars.size.times.select { |i| text[i] == pal[0] }
    possible_index = indices.reject { |n| (n + pal.size) > text.chars.size }
    return false if possible_index.empty?
    return [possible_index, pal.size].flatten
  end

  def show_results
    find_longest_palindrome(@text)
  end

end
