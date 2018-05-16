# your code goes here
require 'pry'
class Person

  attr_reader :name
  attr_accessor :bank_acc, :hyginene, :happiness

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

  def work_out
    new_happiness = self.happiness + 2
    new_hyginene = self.hyginene - 3

    if new_happiness > 10
      new_happiness = 10
    end

    if new_hyginene < 0
      new_hyginene = 0
    end

    self.happiness = new_happiness
    self.hyginene = new_hyginene
    return "♪ another one bites the dust ♫"
  end


  def call_friend(friend)
    new_happiness_caller = self.happiness + 3
    new_happiness_callee = friend.happiness + 3

    if new_happiness_caller > 10
      new_happiness_caller = 10
    end

    if new_happiness_callee > 10
      new_happiness_callee = 10
    end

    self.happiness = new_happiness_caller
    friend.happiness = new_happiness_callee

    return "Hi #{friend.name}. It's #{self.name}! How are you?"
  end

  def start_conversation(person, topic)
    if topic == "politics"
      person.happiness = person.happiness - 1
      if person.happiness < 0
        person.happiness = 0
      end
      self.happiness = self.happiness - 1
      if self.happiness < 0
        self.happiness = 0
      end
      return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      person.happiness = person.happiness + 2
      if person.happiness > 10
        person.happiness = 10
      end
      self.happiness = self.happiness + 2
      if self.happiness > 10
        self.happiness = 10
      end
      return "blah blah sun blah rain"
    else
      return "blah blah blah blah blah"
    end
  end
  binding.pry
end
