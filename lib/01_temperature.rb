def ftoc(farhrenheit)
  celsius = (farhrenheit - 32.0) * 5.0 / 9.0
  return celsius
end

def ctof(celsius)
  farhrenheit = (celsius * 9.0 / 5.0 ) + 32.0
  return farhrenheit
end