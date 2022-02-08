dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

sentence = "Howdy partner, sit down! How's it going?"

my_hash = {}

def substrings(word,arr,hash) 
    arr.each do |w|
    word.split(" ").each do |y|
        if(y.downcase.include? w)
            !hash[w] ? hash[w] = 1 : hash[w] +=1
        end
    end
    hash
end
end

substrings(sentence,dictionary,my_hash)

puts my_hash