def echo(string)
  return string
end

def shout(string)
  return string.upcase
end

def repeat(string, n=2)
  return (string + " ")*(n-1) + string
end

def start_of_word(word, n)
  return word[0,n]
end

def first_word(string)
  return string.split[0]
end

def titleize(string)
  capitalized = string.split.each do |i|
    if i.length >= 2
      if i == "of" || i == "the" || i == "and"
        next
      else
        i.capitalize!
      end
    else
      next
    end
  end
  capitalized.join(' ')
end
