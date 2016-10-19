class Dog

  attr_reader :name, :age

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

  def report_age                    #Instance method
    puts "#{@name} is #{@age} years old."
  end
 
  def talk                          #Instance method
    puts "#{@name} says WOOF!"
  end

  def move(destination)             #Instance method
    puts "#{@name} runs to the #{destination}."
  end
end

dog = Dog.new                       #Create a new Dog instance

dog.name = "Daisy"		    #Initialize attributes
dog.age = 3			    #Initialize attributes

dog.report_age			    #Call instance method
dog.talk                    	    #Call instance method
dog.move("bed")			    #Call instance method
