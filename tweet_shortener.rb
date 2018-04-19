# Write your code here.

def dictionary 
  {
    "hello": "hi",
    "to": "2",
    "two": "2",
    "too": "2",
    "for": "4",
    "four": "4",
    "be": "b",
    "you": "u",
    "at": "@",
    "and": "&"
  }
end


def word_substituter(string)
  split_array = string.split
  long_words = dictionary.keys.to_s.split.flatten

  split_array.map! { |word|
    a = []
    a.push(word)
    if (a&long_words).length > 0
      word + "!"
    else 
      word
    end
  }
  
  return split_array.join" ".to_s
end