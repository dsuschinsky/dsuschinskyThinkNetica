=begin
	Площадь треугольника. 
	Площадь треугольника можно вычилсить, зная его основание (a) и высоту (h) по формуле: 1/2*a*h.
	Программа должна запрашивать основание и высоту треуголиника и возвращать его площадь.
=end

print "Введите длину основания треуголиника: "
base = gets.chomp

print "Введите высоту треуголиника: "
height = gets.chomp

print "Площадь треугольника равна: #{base.to_i*height.to_i/2}."