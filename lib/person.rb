# your code goes here
# your code goes here
require 'pry'

class Person
    attr_accessor :bank_account
    attr_reader :name
    
    def initialize(name)
        @name=name
        @bank_account=25
        @happiness=8
        @hygiene=8
    end

    def happiness=(happiness)
        if happiness<0
            @happiness=0
        elsif happiness>10
            @happiness=10
        else
            @happiness = happiness
        end
    end
    
    def  happiness
       @happiness
    end

    def hygiene=(hygiene)
        if hygiene<0
            @hygiene=0
        elsif hygiene>10
            @hygiene=10
        else
            @hygiene = hygiene
        end
    end
    
    def hygiene
       @hygiene 
    end

    def happy?
        if @happiness>7 
            return true
        else
            return false
        end
    end

    def happy?
        if @happiness>7 
            return true
        else
            return false
        end
    end

    def clean?
        if @hygiene>7 
            return true
        else
            return false
        end
    end

    def get_paid(salary)
        @bank_account += salary
        return  "all about the benjamins"
    end

    def take_bath
        self.hygiene= @hygiene + 4
        
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness= @happiness + 2
        self.hygiene= @hygiene -3
        return "♪ another one bites the dust ♫"
    end

    def call_friend(bredrin)
        self.happiness= @happiness + 3
        bredrin.happiness= bredrin.happiness + 3
        return "Hi #{bredrin.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic === "politics"
            self.happiness= @happiness - 2
            person.happiness= person.happiness - 2
            return "blah blah partisan blah lobbyist"
        elsif topic === "weather"
            self.happiness= @happiness + 1
            person.happiness= person.happiness + 1
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end

    end

end




# The code is a Ruby class for representing a person. The class Person has the following attributes:

# name: This is a reader attribute that returns the name of the person.
# bank_account: This is an accessor attribute that can be used to read and write the value of the person's bank account.
# The class also has the following methods:

# initialize: This is a constructor method that is called when a new instance of the class is created. It sets the initial values for the person's name, bank account, happiness, and hygiene.
# happiness and hygiene: These are accessor methods that can be used to read and write the values for the person's happiness and hygiene. They enforce constraints such that the values for happiness and hygiene must be between 0 and 10 inclusive.
# happy? and clean?: These are methods that check the values of happiness and hygiene and return true if the value is greater than 7, or false otherwise.
# get_paid: This is a method that takes a salary argument and increases the person's bank account by that amount.
# take_bath: This is a method that increases the person's hygiene by 4.
# work_out: This is a method that increases the person's happiness by 2 and decreases their hygiene by 3.
# call_friend: This is a method that takes a friend object as an argument and increases the happiness of both the person and their friend by 3.
# start_conversation: This is a method that takes another person and a topic as arguments. If the topic is "politics", it decreases the happiness of both people by 2. If the topic is "weather", it increases the happiness of both people by 1. If the topic is something else, it returns a generic string "blah blah blah blah blah".
# The code also includes the line require 'pry' at the top. This is a library for debugging Ruby code and can be used to pause the execution of a program and examine the state of the program at that point.