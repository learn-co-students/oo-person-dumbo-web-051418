class Person
  attr_reader :name, :happiness, :bank_account, :hygiene

  def initialize(name)
    @name= name
    @happiness= 8
    @bank_account= 25
    @hygiene= 8
  end

def bank_account= bank_account
  @bank_account = bank_account
end

#happiness
        # a new person instance is initialized with a happiness index of 8 (FAILED - 1)
        # a person instance can change his/her happiness index (FAILED - 2)
        # a person's happiness doesn't exceed 10 (FAILED - 3)
        # a person's happiness doesn't go below 0 (FAILED - 4)
def happiness=(num)
  if num < 0
    @happiness = 0
  elsif num > 10
    @happiness = 10
  else
    @happiness = num
  end
end

def hygiene=(number)
  if number < 0
    @hygiene = 0
  elsif number > 10
    @hygiene = 10
  else
    @hygiene = number
  end
end

def happy?
  if happiness > 7
    true
  else
  false
  end
end

def clean?
  if hygiene > 7
    true
  else
    false
  end
end

def get_paid(salary)
  @bank_account += salary
  return "all about the benjamins"
end


# take_bath
#   makes the person cleaner by 4 points (FAILED - 1)
#   returns a song (FAILED - 2)
#   can't make a person cleaner by 10 points (hint: use the custom #hygiene= method) (FAILED - 3)
def take_bath
  if hygiene < 10
    self.hygiene += 4
  else
    self.hygiene
  end
  return "♪ Rub-a-dub just relaxing in the tub ♫"
end

def work_out
  #work_out
      # makes the person dirtier by 3 points (FAILED - 1)
      # never makes the person have negative dirty points
      #   (hint: use the #hygiene= method) (FAILED - 2)
      # calls on the #hygiene= method to decrease hygiene (FAILED - 3)
      # makes the person happier by 2 points (FAILED - 4)
      # never makes the person have more than 10 happiness points
      #   (hint: use the #happiness= method) (FAILED - 5)
      # calls on the #happiness= method to increment happiness (FAILED - 6)
      # returns Queen lyrics (FAILED - 7)
    if hygiene > 0
      self.hygiene -= 3
    end
    if happiness < 10
      self.happiness += 2
    end
    return "♪ another one bites the dust ♫"
end

    #call_friend
          # accepts one argument, an instance of the Person class (FAILED - 1)
          # makes the person calling happier by three points (FAILED - 2)
          # makes the friend happier by three points (FAILED - 3)
          # never makes the happiness of either party exceed 10
          #   (hint: use the cutom #happiness= method) (FAILED - 4)
          # calls on the #happiness= method to increment happiness (FAILED - 5)
          # returns a string that reflects the caller's side of the conversation (FAILED - 6)
def call_friend(friend)
  # if happiness < 10
  #   self.happiness += 3
  # else
  #   self.call_friend += 3
  # end
  self.happiness += 3
  friend.happiness += 3
  return "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  #start_conversation
        # accepts two arguments, a person to strike a convo with and a topic (FAILED - 6)
    def start_conversation(person, topic)
      # topic: politics
      #        returns 'blah blah partisan blah lobbyist' if the topic is politics (FAILED - 1)
      #        if topic is politics, it makes both people in the convo two points less happy (FAILED - 2)
      #        never makes either party less than 0 points happy (never negative)
      #          (hint: use your #happiness= method) (FAILED - 3)
      #        calls on the #happiness= method (FAILED - 4)
      if topic == "politics"
        self.happiness -= 2
        person.happiness -= 2
        return 'blah blah partisan blah lobbyist'
      elsif topic == "weather"
        self.happiness += 1
        person.happiness += 1
        return 'blah blah sun blah rain'
      else
        return 'blah blah blah blah blah'
      end
    end
end
