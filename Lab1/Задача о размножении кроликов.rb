puts "Введите колличество месяцев"
month = gets.to_i
sq = Math.sqrt(5)
sum = ((((sq +1) / 2) ** month) / sq + 0.5).to_i
puts "#{sum} пар кроликов за #{month} мес"
