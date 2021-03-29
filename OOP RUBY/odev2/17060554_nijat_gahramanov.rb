class GeometricObject
  def initialize(fill, col)
    $filled = fill
    $color = col
  end

  def to_s
    "Color: #{$color} \nFill: #{$filled}"
  end
end

class Circle < GeometricObject
  def initialize(rad)
    @radius = rad
  end
    
  def getPerimeter
    c_per = 2 * 3.141592653 * @radius
    puts "Cemberin cevresi: #{c_per}"
  end

  def getDiameter
    c_dia = 2 * @radius
    puts "Cemberin capi: #{c_dia}"
  end

  def getArea
    c_area = 3.141592653 * @radius * @radius
    puts "Cemberin alani: #{c_area}"
  end
end

class Rectangle < GeometricObject
  def initialize(ken)
    @kenar = ken
  end

  def getPerimeter()
    rec_perimeter = @kenar * 4
    puts "Karenin cevresi: #{rec_perimeter}"
  end
      
  def getArea()
    rec_area = @kenar ** 2
    puts "Karenin alani: #{rec_area}"
  end
end

obje = GeometricObject.new("Dolu","Mor")
circle = Circle.new(2)
rectangle = Rectangle.new(7)
circle.getArea
circle.getDiameter
circle.getPerimeter
puts circle
rectangle.getArea
rectangle.getPerimeter
puts rectangle