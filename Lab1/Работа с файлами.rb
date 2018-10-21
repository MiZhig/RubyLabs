require "csv"

stat_array = []
CSV.read("test.csv").each do |a|
  stat_array.insert(stat_array.length, a[0].to_f)
end

puts "1. Максимальное"
puts "2. Минимальное"
puts "3. Среднее значение"
puts "4. Исправленная дисперсия"

nomer = gets.to_i
case nomer
when 1
  puts "Максимальное число: #{stat_array.max}"
when 2
  puts "Минимальное число: #{stat_array.min}"
when 3
  summa = stat_array.inject(0){ |result, elem| result + elem }
  puts "Среднее значение: #{summa / stat_array.length}"
when 4
  summa = stat_array.inject(0){ |result, elem| result + elem }
  srednee = summa / stat_array.length
  dispersia = (stat_array.inject(0) { |result, elem| result + ((elem - srednee) ** 2) }) / (stat_array.length - 1)
  puts "Дисперсия: #{dispersia}"
else
  puts "Неправильное число"
end
