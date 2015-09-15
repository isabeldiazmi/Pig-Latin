def pigLatin1
  puts "Escribe una palabra"
  word = gets.chomp
  arr = word.split("")
  letra = arr.first
  aux = []
  if letra == "a" || letra == "e" || letra == "i" || letra == "o" || letra == "u" 
    puts arr.join + "way"
  else
    while letra != "a" && letra != "e" && letra != "i" && letra != "o" && letra != "u" && !arr.empty?
      aux.push(letra)
      arr.delete(letra)
      letra = arr.first
    end
    puts arr.join + aux.join + "ay"
  end
end

def pigLatin2(palabra)
  arr = palabra.split("")
  letra = arr.first
  aux = []
  if letra == "a" || letra == "e" || letra == "i" || letra == "o" || letra == "u" 
    resp = arr.join + "way"
  else
    while letra != "a" && letra != "e" && letra != "i" && letra != "o" && letra != "u" && !arr.empty?
      aux.push(letra)
      arr.delete(letra)
      letra = arr.first
    end
    resp = arr.join + aux.join + "ay"
  end
  resp
end

def oracionesPigLatin
  puts "Escribe una oracion"
  oracion = gets.chomp
  arr = oracion.split(" ")
  aux = []
  arr.each{|x| aux << pigLatin2(x)}
  aux.each{|x| print x + " "}
end

oracionesPigLatin