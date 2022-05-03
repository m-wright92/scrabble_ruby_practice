require ('rspec')
require ('scrabble_score')

describe('#scrabble_score') do
  it("returns a scrabble score for a letter") do
    word1 = ScrabbleScore.new("a")
    expect(word1.score_count).to(eq(1))
  end
  it("returns a scrabble score for two letters") do
    word1 = ScrabbleScore.new("ae")
    expect(word1.score_count).to(eq(2))
  end
  it("returns a scrabble score for two point letters") do
    word1 = ScrabbleScore.new("dg")
    expect(word1.score_count).to(eq(4))
  end
  it("returns a scrabble score for three point letters") do
    word1 = ScrabbleScore.new("bc")
    expect(word1.score_count).to(eq(6))
  end
  it("returns a scrabble score for four point letters") do
    word1 = ScrabbleScore.new("fv")
    expect(word1.score_count).to(eq(8))
  end
  it("returns a scrabble score for five point letters") do
    word1 = ScrabbleScore.new("k")
    expect(word1.score_count).to(eq(5))
  end
  it("returns a scrabble score for eight point letters") do
    word1 = ScrabbleScore.new("jx")
    expect(word1.score_count).to(eq(16))
  end
  it("returns a scrabble score for ten point letters") do
    word1 = ScrabbleScore.new("Qz")
    expect(word1.score_count).to(eq(20))
  end
end