def foobar(a, b)
  if a == 20 || b == 20
    return b
  else
    return a + b
  end
end

# Примеры использования:
puts foobar(20, 5)    # => 5 (первое число = 20, возвращаем второе)
puts foobar(10, 20)   # => 20 (второе число = 20, возвращаем второе)
puts foobar(10, 15)   # =