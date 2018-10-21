puts "Введите значение градусов"
gradus1 = gets.to_f

puts "Введите название шкалы из которой переводим (C, K, F)"
shkala1 = gets

puts "Введите название шкалы в которую переводим (C, K, F)"
shkala2 = gets

##########################################################
if shkala1 == "C\n"

  if shkala2 == "C\n"
    gradus2 = gradus1
    puts "#{gradus1} C = #{gradus2} C"

  elsif shkala2 == "F\n"
    gradus2 = gradus1 * 1.8 + 32
    puts "#{gradus1} C = #{gradus2} F"

  else shkala2 == "K\n"
    gradus2 = gradus1 + 273.15
    puts "#{gradus1} C = #{gradus2} K"

  end
##########################################################
elsif shkala1 == "F\n"

  if shkala2 == "C\n"
    gradus2 = (gradus1 - 32) / 1.8
    puts "#{gradus1} F = #{gradus2} C"

  elsif shkala2 == "F\n"
    gradus2 = gradus1
    puts "#{gradus1} F = #{gradus2} F"

  else shkala2 == "K\n"
    gradus2 = (gradus1 + 459.67) / 1.8
    puts "#{gradus1} F = #{gradus2} K"

  end
##########################################################
else shkala1 == "K\n"

  if shkala2 == "C\n"
    gradus2 = gradus1 - 273.15
    puts "#{gradus1} K = #{gradus2} C"

  elsif shkala2 == "F\n"
    gradus2 = gradus1 * 1.8 - 459.67
    puts "#{gradus1} K = #{gradus2} F"

  else shkala2 == "K\n"
  gradus2 = gradus1
  puts "#{gradus1} K = #{gradus2} K"

  end

end
