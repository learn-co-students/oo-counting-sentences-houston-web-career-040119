require 'pry'

class String

  def sentence?
    self[-1] == "."
  end

  def question?
    self[-1] == "?"
  end

  def exclamation?
    self[-1] == "!"
  end

  def count_sentences
    num_of_sentences = 0

    self.split.each do |letter|
      num_of_sentences += 1 if letter[-1] == "."|| letter[-1] == "?" || letter[-1] == "!"
    end

    num_of_sentences
  end
end
