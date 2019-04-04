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
    delimiters = ['.','?',"!"]
    arr = self.split(Regexp.union(delimiters))
    arr = arr.reject { |c| c.empty? }
    arr.count
  end
end
