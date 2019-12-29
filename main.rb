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