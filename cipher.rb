def caesar_cipher(text,key)
puts text
textArr= text.split("")
convertedArr = []
textArr.each do |letter|
  letterOrd = letter.ord
  letterOrdAfter = letterOrd +key  
    if letterOrd.between?(65,90) || letterOrd.between?(97,122)
        if letterOrdAfter.between?(65,90)|| letterOrdAfter.between?(97,122) 
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
