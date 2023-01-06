# Write a class called Unicorn
# it should have a dynamic name attribute
# it should have a color attribute, that is silver by default
# it should have a method called "say" that returns whatever string is passed in, with "*~*" at the beginning and end of the string

class Unicorn       #This establishes the class of Unicorn
    def initialize(name)        #This states that dynamic attribute (name) will be provided here
        @name = name        #This indicates that the name will be taken from the parameter above
        @color = "silver"   #This indicates that the color attribute is default as "silver"
    end
    def say(text)       #This line creates a method called "say" that will print the argument provided, with "*~*" before and after the string.
        puts "*~*#{text}*~*"
    end
end

unicorn1 = Unicorn.new("Joe").say("hello there")

p unicorn1



#  Write a class called Vampire
#  it should have a dynamic name attribute
#  it should have a pet attribute, that is a bat, by default BUT it could be dynamic if info is passed in initially
#  it should have a thirsty attribute, that is true by default
#  it should have a drink method. When called, the thirsty attribute changes to false

class Vampire       #This line establishes the Vampire class.
    def initialize(name,pet = "bat")    #This line establishes the parameter for name & declares that there is a parameter for pet, but pet will default to "bat" if no argument is given.
        @name = name        #This line indicates that the attribute name will be determined by the argument provided
        @pet = pet        #This line indicates that the default pet attribute will be "bat"
        @thirsty = true     #This line declares the thirsty attribute as true.
    end
    def drink               #This line establishes a method called "drink"
        @thirsty = false    #This line tells the method to, when called, change the thirsty attribute from true to false.
    end
end

vampire1 = Vampire.new("John")
p vampire1
vampire2 = Vampire.new("Edward", "snake")
p vampire2

#  Write a Dragon class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic rider attribute (string)
#  it should have a dynamic color attribute (string)
#  it should have a is_hungry attribute that is true by default
#  it should have a eat method. If the dragon eats 4 times, it is no longer hungry

class Dragon        #This line establishes the Dragon class.
    def initialize(name, rider, color)  #This line declares the parameters for dynamic attributes name, rider, and color
        @name = name                    #This line establishes that the dynamic attribute name will be determined by the argument in the name parameter
        @rider = rider                  #This line establishes that the dynamic attribute rider will be determined by the argument in the rider parameter
        @color = color                  #This line establishes that the dynamic attribute color will be determined by the argument in the color parameter
        @is_hungry = true               #This line establishes that the is_hungry attribute will be true by default
    end

    def eat(num)                        #This line establishes the eat method
        if num >= 4                     #This line states that if the "number of eat" is greater than 4,
            @is_hungry = false          #the @is_hungry attribute will turn false.
        else                            #Otherwise,
            @is_hungry = true           #the @is_hungry attribute will remain true.
        end
    end
end

dragon1 = Dragon.new("Abe", "Logan", "blue")
p dragon1
dragon1.eat(3)
p dragon1
dragon1.eat(4)
p dragon1

#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attribute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.

class Hobbit    #This line establishes the Hobbit class
    attr_reader :name   #This line allows the name attribute to be read, but not changed
    def initialize(name, disposition)   #This line declares the parameters for the name and disposition attributes
      @name = name                      #This line indicates that the @name attribute will be the first argument defined when a new Hobbit is created.
      @disposition = disposition        #This line indicates that the @disposition attribute will be the second argument defined when a new Hobbit is created.
      @age = 0                          #This line indicates that the @age attribute will default to 0
      @is_adult = false                 #This line indicates that the @is_adult attribute will default to false
      @is_old = false                   #This line indicates that the @is_old attribute will default to false
      @has_ring =                       #This line declares the attribute @has_ring will be determined by the if statement below
        if @name == "Frodo"             #If the @name attribute is equal to "Frodo",
            true                        #@has_ring = true
        else                            #Otherwise,
          false                         #@has_ring = false.
        end
    end
  
    def celebrate_birthday            #This line defines a method called celebrate_birthday
      @age = @age.next                #When called, it will set the @age attribute to the next highest integer.
        if @age >= 33                 #If the @age attribute is greater than or equal to 33
          @is_adult = true            #@is_adult = true
        end   
      if @age >= 101                  #if @age attribute is greater than or equal to 101
        @is_old = true                #@is_old = true
      else                            #Otherwise,
        @is_old = false               #@is_old = false
      end
    end
  end

hobbit1 = Hobbit.new("Frodo", "pleasant")
p hobbit1
35.times {hobbit1.celebrate_birthday}
p hobbit1
70.times {hobbit1.celebrate_birthday}
p hobbit1

hobbit2 = Hobbit.new("Bilbo", "reserved")
p hobbit2