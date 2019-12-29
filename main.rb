class Calculo
  
  def initialize(a, b)
    @a = a
    @b = b
    @puntos = 0
  end

  def suma
   resultado = @a + @b
   if resultado
    @puntos += 1
   end
   puts "el resultado es #{resultado} ganaste #{@puntos}"
   return self
  end

  def resta
   resultado = @a - @b
   if resultado
    @puntos += 1
   end
   puts "el resultado es #{resultado} ganaste #{@puntos}"
   return self
  end
end

calculo_1 = Calculo.new(4, 3)
puts calculo_1.suma.resta



class Manager 
  attr_accessor :name, :salary

  def initialize(name, salary)
   @name = name
   @salary = salary
  end
  
  def information
   puts "worker name #{@name} have the salary #{@salary}"
  end

  # Existen 3 tipos de encapsulamiento
  # public, protected, private
  # para este ejemplo usaremos el protected

  protected
  
  def get_payment
    return (@salary * 1.15)
  end

end


class Cashier < Manager
  attr_accessor :bonus

  def initialize(name, salary, bonus)
    @bonus = bonus
    @salary = salary
    @bonus = bonus
  end

  def get_payment_cashier
    return get_payment + @bonus
  end
end

cashier_1 = Cashier.new('alex', 300, 105)
puts cashier_1.get_payment_cashier