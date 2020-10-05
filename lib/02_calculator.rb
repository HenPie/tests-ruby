def add(a, b)
  return a + b
end

def subtract(a, b)
  return a - b
end

def sum(array)
  return array.inject(0, :+)
end

def multiply(a, b)
  return a * b
end

def power(a, b)
  return a ** b
end

def factorial(n)
  return 1 if n <= 1 
  n * factorial(n-1)
end