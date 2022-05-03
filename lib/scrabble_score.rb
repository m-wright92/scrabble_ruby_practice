require ('pry')

class ScrabbleScore
  def initialize(word)
    @word = word
  end

  def score_count
    score = 0
    low_case_input = @word.downcase
    fin_input = low_case_input.chars
    one_point = ["a", "e", "i", "o", "u", "l", "n", "r", "s", "t"]
    two_point = ["d", "g"]
    three_point = ["b", "c", "m", "p"]
    four_point = ["f", "h", "v", "w", "y"]
    five_point = ["k"]
    eight_point = ["j", "x"]
    ten_point = ["q", "z"]

    fin_input.each do |letter|
      if(one_point.include?(letter))
        score += 1
      elsif(two_point.include?(letter))
        score += 2
      elsif(three_point.include?(letter))
        score += 3
      elsif(four_point.include?(letter))
        score += 4
      elsif(five_point.include?(letter))
        score += 5
      elsif(eight_point.include?(letter))
        score += 8
      elsif(ten_point.include?(letter))
        score += 10
      end
    end
    score
  end 
end