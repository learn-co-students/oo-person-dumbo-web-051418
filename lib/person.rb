class Person
  attr_reader :name
  attr_accessor :bank_account

  def initialize(name, bank_account=25)
    @name = name
    @bank_account = bank_account
    @happiness_points = 8
    @hygiene_points = 8
  end

  def happiness_points=(happiness_points)
    if ![0..10].include?(happiness_points)
      puts "Your happiness points must be between 0-10."
    else
      @happiness_points = happiness_points
    end
  end

  def happiness_points
    @happiness_points
  end

  def hygiene_points=(hygiene_points)
    if ![0..10].include?(hygiene_points)
      puts "Your hygiene points must be between 0-10."
    else
      @hygiene_points = hygiene_points
    end
  end

  def hygiene_points
    @hygiene_points
  end

  
end
