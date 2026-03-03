def greeting
  print "Введите ваше имя: "
  name = gets.chomp
  
  print "Введите вашу фамилию: "
  surname = gets.chomp
  
  print "Введите ваш возраст: "
  age = gets.chomp.to_i
  
  if age < 18
    puts "Привет, #{name} #{surname}. Тебе меньше 18 лет, но начать учиться программировать никогда не рано"
  else
    puts "Привет, #{name} #{surname}. Самое время заняться делом!"
  end
end

# Вызов метода
greeting