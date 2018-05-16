require 'pry'

class Person
  attr_accessor :bank_account
  attr_reader :name

  def initialize(name, bank_account=25, happiness=8,hygiene=8)
    @name = name
    @bank_account = bank_account
    @happiness = happiness
    @hygiene = hygiene
  end

  def happiness
    @happiness
  end

  def happiness=(new_smiles)
    if new_smiles > 10
      @happiness = 10
    elsif new_smiles < 0
      @happiness = 0
    else
      @happiness = new_smiles
    end
  end

  def hygiene
    @hygiene
    end

  def hygiene=(vibes)
    if vibes > 10
      @hygiene = 10
    elsif vibes < 0
      @hygiene = 0
    else
      @hygiene = vibes
    end
  end

  def clean?
    @hygiene > 7 ? true : false
  end

  def happy?
    @happiness > 7 ? true : false
  end

  def get_paid(salary)
    @bank_account += salary
    "all about the benjamins"
  end

  def take_bath
    # calling reader hygiene to then add 4 and write to hygiene instance variable
    self.hygiene = self.hygiene + 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness = self.happiness + 3
    friend.happiness = friend.happiness + 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end


  def start_conversation(person, topic)
    case topic
    when "politics"
      self.happiness -= 2
      person.happiness -= 2
      "blah blah partisan blah lobbyist"
    when "weather"
      self.happiness += 1
      person.happiness += 1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end
end
