# Write your code here.

def dictionary 
  {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end


def word_substituter(string)
  split_array = string.split
  long_words = dictionary.keys
  split_array.map! { |word|
    contain = []
    contain.push(word)
    if (contain&long_words).length > 0
      contain = []
      dictionary[word]
    else 
      word
    end
  }
  return split_array.join" ".to_s
end

def bulk_tweet_shortener(array_of_tweets)
  for tweet in array_of_tweets
    puts word_substituter(tweet)
  end
end