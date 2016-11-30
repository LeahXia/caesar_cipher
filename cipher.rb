def caesar_cipher(text,key)
puts text
textArr= text.split("")
convertedArr = []
textArr.each do |letter|
  letterOrd = letter.ord
  letterOrdAfter = letterOrd +key  
    if (letter >= "A" && letter <= "Z") || (letter >= "a" && letter <= "z")
        if letterOrdAfter <= 90 || (letterOrdAfter >=97 && letterOrdAfter <=122)
            convertedArr << letterOrdAfter.chr
        else
            convertedArr << (letterOrdAfter-26).chr
        end
    else
        convertedArr << letter
    end
end
puts convertedArr.join()
end

caesar_cipher("Does this work?",5)
