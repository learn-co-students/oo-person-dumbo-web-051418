require 'pry'
# your code goes here
class Person
  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account
  def initialize(name, bank_account=25, happiness=8, hygiene=8)
    @name = name
    @bank_account = bank_account
    @happiness = happiness
    @hygiene = hygiene
    #@happiness = happiness
    end

    def happiness=(happy_amount)
      if happy_amount > 10
        happy_amount = 10
      elsif happy_amount < 0
        happy_amount = 0
      else
        happy_amount
      end
        @happiness = happy_amount
      end

      def hygiene=(hygiene_amount)
        if hygiene_amount > 10
          hygiene_amount = 10
        elsif hygiene_amount < 0
          hygiene_amount = 0
        else
          hygiene_amount
        end
          @hygiene = hygiene_amount
  end

  def happy?
      if self.happiness > 7
        return true
      else
        return false
      end
  end

  def clean?
    if self.hygiene > 7
      return true
    else
      return false
    end
  end

  def get_paid(salary_amount)
    self.bank_account += salary_amount
  "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
  "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness += 2
    self.hygiene -= 3
  "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == 'politics'
      person.happiness -= 2
      self.happiness -= 2
      'blah blah partisan blah lobbyist'
    elsif topic == 'weather'
      person.happiness += 1
      self.happiness += 1
      'blah blah sun blah rain'
    else
      'blah blah blah blah blah'
    end
  end
end
