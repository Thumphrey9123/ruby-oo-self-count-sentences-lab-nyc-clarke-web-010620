require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      return true
    end
    false
  end

  def question?
    if self.end_with?("?")
      return true
    end
    false
  end

  def exclamation?
    if self.end_with?("!")
      return true
    end
    false
  end

  def count_sentences
    new_arr = []
    self.split(/[?!.]/, ).each do |string|
      if string != ''
        new_arr << string
      end
    end
    new_arr.length
  end
end