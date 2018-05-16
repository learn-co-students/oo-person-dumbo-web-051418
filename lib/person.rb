# your code goes here
require 'pry'
class Person

  attr_reader :name, :hyginene, :happiness

  def initialize(name)
    @name = name
    @bank_acc = 25
    @happiness = 8
    @hyginene = 8
  end

  def clean?
    return self.hyginene > 7
  end

  def happy?
    return self.happiness > 7
  end

binding.pry 


end
