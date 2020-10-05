def translate(text)
  vowels = %w[a e i o u]
  array = []
  words = text.split(" ")

  words.each do |word|
  if vowels.include?(word.chars.first)
    array << word + "ay"
  elsif word[0] != vowels && word[1,3] == "qu"
    array << word[3..-1] + word[0...3] + "ay"
  elsif word[0,2] == "qu"
    array << word[2..-1] + word[0...2] + "ay" 
  else 
    array << helper_method(word)
  end
end
return array.join(" ")
end

def helper_method(word)
  vowels = %w[a e i o u]
  characters = word.chars        
  first_vowel_char = characters.find{|char| vowels.include?(char)}             
  fvc_idx = word.index(first_vowel_char)    
  return word[fvc_idx..-1] + word[0...fvc_idx] + "ay" 
end
