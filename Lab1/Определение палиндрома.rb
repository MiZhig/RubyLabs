puts "Введите слово для проверки"
slovo = gets.chomp

if slovo == slovo.reverse
  puts "Палиндром"
else
  puts "Не палиндром"
end
