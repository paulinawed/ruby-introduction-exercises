require 'pp'
class Figure
  PI = 3.14
  def show
    SquareRectangle.new.computations
    Circle.new.formulas
    Trapeze.new(2.34,6.66,2).computations
    Trapeze.new(113,33,16).computations
  end
end

class Circle < Figure
  def initialize
    @r = [5, 2.25, 100, 1.33]
    @pole=[]
    @obwod=[]
  end

  def formulas
    @r.each do |e|
      a= PI * e**2
      b= 2*PI*e
      @pole<< a
      @obwod<< b
    end
    pp "Pola kół wynoszą: #{@pole}"
    pp "Obwody wynoszą: #{@obwod}"
  end
end

class SquareRectangle < Figure
  def initialize
    @pole=[]
    @obwod=[]
  end

  def computations
    array_square = []
    array_rectangle= [[3,3],[4.45,4.45], [12,12],[3.66,3.66],[5,2],[3.33,4.20],[124,33],[1.2,2.2]]
    array_rectangle.each do|x,y|
      b=x*y
      c=2*x+2*y
      @pole<<b
      @obwod<<c
      end

    pp "Pola kwadratów  wynoszą: #{@pole[0..3]}"
    pp "Obwody kwadratów wynoszą: #{@obwod[0..3]}"
    pp "Pola prostokatów wynoszą: #{@pole[4..7]}"
    pp "Obwody prostokatów wynoszą: #{@obwod[4..7]}"
  end
end


class Trapeze <Figure
  def initialize(a,b,h)
    @a = a
    @b = b
    @h = h
  end

  def trapeze_area
    ((@a+@b)*@h )/2
  end

  def trapeze_circuit
     roznica = (@b - @a)/2
    c= roznica**2 + @h**2
    c= Math.sqrt(c)
    @a+@b+2*c
  end

  def computations
    p "Pola trapezów #{trapeze_area }"
    p "Obwody trapezów #{trapeze_circuit}"
  end
end

Figure.new.show
