class Person
  attr_accessor :bank_account
  attr_reader :name
  # attr_accessor :happiness

  def initialize (name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
    @password = ""
    @MAX = 10
    @MIN = 0
  end

  def happiness=(new_happiness)
    if new_happiness > @MAX
      @happiness = @MAX
    elsif new_happiness < @MIN
      @happiness = @MIN
    else
      @happiness = new_happiness
    end
  end

  def happiness
    @happiness
  end

  def hygiene=(new_hygiene)
    if new_hygiene > @MAX
      @hygiene = @MAX
    elsif new_hygiene < @MIN
      @hygiene = @MIN
    else
      @hygiene = new_hygiene
    end
  end

  def hygiene
    @hygiene
  end

  def clean?
    hygiene > 7
  end

  def happy?
    happiness > 7
  end

  def get_paid(salary)
    self.bank_account += salary
    return "all about the benjamins"
  end
# add password initialization // ability to change password after old password
  def take_bath
    self.hygiene += 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness += 2
    self.hygiene -= 3
    return "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    friend.happiness += 3
    self.happiness += 3
    return "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend,topic)
    case topic
      when "politics"
        friend.happiness -= 2
        self.happiness -= 2
        return 'blah blah partisan blah lobbyist'
      when "weather"
        friend.happiness += 1
        self.happiness += 1
        return 'blah blah sun blah rain'
      else
        return 'blah blah blah blah blah'
      end
  end


end
