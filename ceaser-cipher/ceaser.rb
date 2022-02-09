def ceaser(str,num)
    str = str.split("")
    alphabet = ['a','b','c','d','e','f','g','h','i','g','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']
    string = ""
      
      str.each do |x|
        if /[^a-zA-Z0-9]/.match x
          string += x
        else
      if x.upcase == x
        alphabet.each do |w|  w.upcase! end
        temp = alphabet.find_index(x)
      else 
       alphabet.each do |w|  w.downcase! end
        temp = alphabet.find_index(x)
      end
         i = ( temp + num ) % alphabet.length
          string += alphabet[i]
        end
      end
    string
    end
    
    puts ceaser('What a string!',5)