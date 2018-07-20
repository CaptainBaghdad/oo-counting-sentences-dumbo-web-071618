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
   # self.strip.split(/\w[?!.]/).length > 0 ? self.strip.split(/\w[?!.]/).length : 0
    #puts self.strip.split(/\w[?!.]/)
    self.split(/[.!?]/).map{|x| !(x.match(/\w+/).nil?)}.reject{|x| x == false}.size 
    #
  end
end