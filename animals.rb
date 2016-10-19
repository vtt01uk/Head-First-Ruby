class Bird
  def talk(name)
    puts "#{name} says Chirp! Chirp!"
  end

  def move(name, destination)
    puts "#{name} flies to the #{destination}."
  end
end

class Dog

  attr_accessor :name, :age

  def name=(value)                 #Attribute writer method for @name
    if value == ""
      raise "Name can't be blank!" #data validation
    end
       @name = value
  end

  def age=(value)                  #Attribute writer method for @age
    if value < 0
       raise "An age of #{value} isn't valid!"   #data validation
    end
      @age = value
  end

  def report_age 
    puts "#{@name} is #{@age} years old."
  end
 
  def talk(name)
    puts "#{name} says WOOF!"
  end

  def move(destination)             #Instance method
    puts "#{name} runs to the #{destination}."
  end
end

class Cat
  def talk(name)
    puts "#{name} says Meow!"
  end

  def move(name, destination)
    puts "#{name} Runs to the #{destination}."
  end
end

bird = Bird.new
dog = Dog.new
cat = Cat.new

bird.talk
bird.move("tree")
dog.talk
dog.move("lawn")
cat.talk
cat.move("fench")

