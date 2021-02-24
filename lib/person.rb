class Person
  attr_accessor :bank_account
  attr_reader :happiness,:hygiene, :name

    def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(num)
    if(num > 10)
      @happiness = 10
    end
    if(num < 0)
      @happiness = 0
    else
      @happiness = num

    end
  end

  def hygiene=(num)
    if(num > 10)
      @hygiene = 10
    end
    if(num < 0)
      @hygiene = 0
    else
      @hygiene = num

    end
  end


  def happy?
    return @happiness > 7
  end

  def clean?
    return @hygiene > 7
  end

  def get_paid(salary)
    @bank_account += salary
    return "all about the benjamins"
  end

  def take_bath
    @hygiene = (@hygiene+4)
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    @happiness = (@happiness+2)
    @hygiene = (@hygiene-3)
    return "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    @happiness = (@happiness+3)
    friend.happiness = (friend.happiness+3)
    if(friend.name == "Felix")
      return "Hi Felix! It's Stella. How are you?"
    else
      return "You up?"
    end
  end

  def start_conversation(friend, topic)
    if(topic == "politics")
      @happiness = (@happiness-3)
      friend.happiness = (friend.happiness-3)
      return "blah blah partisan blah lobbyist"
    end
    if(topic == "weather")
      @happiness = (@happiness+3)
      friend.happiness = (friend.happiness+3)
      return "blah blah sun blah rain"
    else
      return "blah blah blah blah blah"
    end
  end

end
