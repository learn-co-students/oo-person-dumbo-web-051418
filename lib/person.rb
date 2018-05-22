# your code goes here
require 'pry'

class Person
  attr_accessor  :bank_account, :hygiene
  attr_reader :name, :happiness

  def initialize (name)
    @name=name
    @bank_account=25
    @happiness=8
    @hygiene=8
  end

  def happiness=(index)
    @happiness = index
    @happiness = 10 if @happiness > 10
    @happiness = 0 if @happiness < 0
  end

  def hygiene=(index)
    @hygiene = index
    @hygiene = 10 if @hygiene >10
    @hygiene = 0 if @hygiene < 0
  end

  def clean?
    @hygiene > 7 ? true : false
  end

  def happy?
    @happiness > 7 ? true : false
  end

  def get_paid(salary)
    @bank_account += salary.to_i
    return "all about the benjamins"
  end

  def take_bath
    self.hygiene +=4
    return  "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    return "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    friend.happiness += 3
    self.happiness += 3
    return  "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(leader,topic)
    if topic=="politics"
      leader.happiness-=2
      self.happiness-=2
      return "blah blah partisan blah lobbyist"
    elsif topic =="weather"
      leader.happiness+=1
      self.happiness+=1
      return "blah blah sun blah rain"
    else
      return "blah blah blah blah blah"
    end
  end
end
