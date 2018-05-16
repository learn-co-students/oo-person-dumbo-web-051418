require 'pry'

class Person
  attr_accessor  :bank_account, :happiness
  attr_writer :hygiene
  attr_reader :name

  def initialize (name, bank_account=25, happiness=8, hygiene=8)
    @name=name
    @bank_account=bank_account
    @happiness=happiness
    @hygiene=hygiene
  end

  def clean?
    @hygiene > 7 ? true : false
  end

  def happy?
    @happiness > 7 ? true : false
  end

  def get_paid(salary)
    @bank_account += salary.to_i
    return "All about the benjamins"
  end

  def take_bath
    @hygiene += 4
    return  "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    @hygiene -= 3
    @happiness += 2
    return "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    friend.happiness += 3
    self.happiness += 3
    return  "Hi #{self.name}. It's #{friend.name}! How are you?"
  end

  def start_conversation(leader,topic)
    if topic=="politics"
      leader.happiness-=1
      self.happiness-=1
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

  jee=Person.new("Jee", 25,15,15)

  michael=Person.new("Michael", 25,15,15)

  puts "#{jee.happiness}"
  puts "#{michael.happiness}"
  p jee.call_friend(michael)

  puts "#{jee.happiness}"
  puts "#{michael.happiness}"

   # p jee.take_bath
  # puts jee.name
  # p jee.work_out

  jee.call_friend(michael=Person.new("g", 25,15,15))

  p jee.start_conversation(michael,"cats")
