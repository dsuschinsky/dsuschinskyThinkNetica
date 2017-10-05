=begin
	Квадратное уравнение. 
	Пользователь вводит 3 коэффициента a, b и с. Программа вычисляет дискриминант (D) и корни уравнения (x1 и x2, если они есть) и 
	выводит значения дискриминанта и корней на экран. При этом возможны следующие варианты:
	  Если D > 0, то выводим дискриминант и 2 корня
	  Если D = 0, то выводим дискриминант и 1 корень (т.к. корни в этом случае равны)
	  Если D < 0, то выводим дискриминант и сообщение "Корней нет"
	
	D = b2 - 4ac 
	x1 = (-b + sqrt(b**2-4*a*c))/2*a
	x2 = (-b - sqrt(b**2-4*a*c))/2*a
=end

print "Введите коэффициент a: "
a = gets.chomp.to_f

print "Введите коэффициент b: "
b = gets.chomp.to_f

print "Введите коэффициент c: "
c = gets.chomp.to_f

d = b**2 - 4*a*c

if d > 0
  sqrt = Math.sqrt(b**2-4*a*c)
  x1 = (-b + sqrt)/2*a
  x2 = (-b - sqrt)/2*a

  print "Дискриминант = #{d}. Уравнение имеет 2 корня: x1=#{x1}, x2=#{x2}."

elsif d == 0
  sqrt = Math.sqrt(b**2-4*a*c)
  x1 = (-b + sqrt)/2*a
  print "Дискриминант = #{d}. Уравнение имеет 1 корень: x1=#{x1}."

else
  print "Дискриминант = #{d}. Уравнение корней не имеет."

end