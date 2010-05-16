class UnpredictableString < String
  def initialize(text)
    @text = text
  end

  def scramble
    @text.split("").sort_by { rand }.join
  end
end

us = UnpredictableString.new("It was a dark and stormy night.")
puts us.scramble
