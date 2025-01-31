# Write a class called Unicorn
# it should have a dynamic name attribute
# it should have a color attribute, that is silver by default
# it should have a method called "say" that returns whatever string is passed in, with "*~*" at the beginning and end of the string

class Unicorn
  def initialize(name)
    @name = name
    @color = "silver "
  end

  def say
    p '*~* Hi, I am a unicorn *~*'
  end
end

unicorn1 = Unicorn.new(" Brian")
p unicorn1





#  Write a class called Vampire
#  it should have a dynamic name attribute
#  it should have a pet attribute, that is a bat, by default BUT it could be dynamic if info is passed in initially
#  it should have a thirsty attribute, that is true by default
#  it should have a drink method. When called, the thirsty attribute changes to false
class Vampire
  def initialize(name)
    @name = name
    @pet = 'bat'
    @thirsty = true
  end

  def change_pet(new_pet)
    @pet = new_pet
  end

  def drink(thirst)
    @thirsty = thirst
  end
end
vampire1 = Vampire.new("Dracula")
vampire1.change_pet("Dog")
vampire1.drink(false)
p vampire1




#  Write a Dragon class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic rider attribute (string)
#  it should have a dynamic color attribute (string)
#  it should have a is_hungry attribute that is true by default
#  it should have a eat method. If the dragon eats 4 times, it is no longer hungry
class Dragon
  def initialize(name, rider, color)
    @name = name
    @rider = rider
    @color = color
    @is_hungry = true
    @number_of_meals = 3
  end

  def eat(meals)
    @number_of_meals = meals
  end

  def hunger(hungry)
    @is_hungry = hungry
  end
end


dragon1 = Dragon.new("Flame", "Brian", "Red")
dragon1.eat(4)
dragon1.hunger(false)
p dragon1




#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attribute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.
class Hobbit
  def initialize(name, disposition, age)
    @name = name
    @disposition = disposition
    @age = age
    @is_adult = false
    @is_old = false
    @has_ring = false
  end


  def celebrate_birthday(year)
   @age + year
  end

  def old
    if @age < 101
      @is_old = false
    end
  end

  def ring
    if @name == "Frodo"
      @has_ring = true
    end
  end
end
hobbit1 = Hobbit.new("Frodo", "friendly", 102)
hobbit1.old()
hobbit1.ring()
hobbit1.celebrate_birthday(1)
p hobbit1
