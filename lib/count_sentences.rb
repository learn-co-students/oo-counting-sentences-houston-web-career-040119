require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    i = 0
    str = String(self)
    while i < str.length
      if str[i] == "!" || str[i] == "?"
        str[i] = "."
      end
      i += 1
    end
    arr = str.split(".")

    arr.delete_if do |item|
      item == ""
    end

    arr.length 
  end
end