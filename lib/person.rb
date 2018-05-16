# your code goes here
require 'pry'
class Person

  attr_reader :name, :hyginene, :happiness, :bank_acc
  attr_writer :bank_acc, :hyginene

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

  def get_paid(salary_amount)
    new_amount = salary_amount + self.bank_acc
    self.bank_acc = new_amount
    return "All about the benjamins"
  end

  def take_bath
    increased_hyginene = self.hyginene + 4
    if increased_hyginene > 10
      self.hyginene = 10
    else
      self.hyginene = increased_hyginene
    end
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end
end
