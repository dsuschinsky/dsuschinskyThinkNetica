=begin
	Прямоугольный треугольник. 
	Программа запрашивает у пользователя 3 стороны треугольника и определяет, является ли треугольник прямоугольным, 
	используя теорему Пифагора (www-formula.ru) и выводит результат на экран. c**2=a**2+b**2

	Также, если треугольник является при этом равнобедренным (т.е. у него равны любые 2 стороны), 
	то дополнительно выводится информация о том, что треугольник еще и равнобедренный. 

	Подсказка: чтобы воспользоваться теоремой Пифагора, нужно сначала найти самую длинную сторону (гипотенуза) 
	и сравнить ее значение в квадрате с суммой квадратов двух остальных сторон. 
	Если все 3 стороны равны, то треугольник равнобедренный и равносторонний, но не прямоугольный.
=end
array = [3]

print "Введите длину стороны a: "
array << gets.chomp.to_f

print "Введите длину стороны b: "
array << gets.chomp.to_f

print "Введите длину стороны c: "
array << gets.chomp.to_f

array.sort!

a = array[0] # катет
b = array[1] # катет
c = array[2] # гипотенуза

rectangular = (c**2 == (a**2 + b**2)) # определеили прямоугольность
isosceles = (a == b && a != c)


if isosceles && !rectangular
	print "Данный треугольник равнобедренный!"

elsif !isosceles && rectangular
  print "Данный треугольник прямоугольный!"

elsif isosceles && rectangular
	print "Данный треугольник равнобедренный и прямоугольный!"

elsif c == a && a == b
	print "Данный треугольник равносторонний!"

else
	print "Данный треугольник не является прямоугольным!"

end
