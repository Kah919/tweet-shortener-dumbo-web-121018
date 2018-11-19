# Write your code here.
def dictionary
  slang = {
    "hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "four" => '4',
    "be" => 'b',
    "you" => 'u',
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweets)
  parts = tweets.split
  parts.each_with_index do |ele, idx|
    dictionary.each do |k, v|
      if ele == k || ele == k.capitalize
        parts[idx] = v
      end
    end
  end
  return parts.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.map { |ele| puts word_substituter(ele) }
end

def selective_tweet_shortener(tweets)
  if tweets.length > 140
    return word_substituter(tweets)
  end
  return tweets
end

def shortened_tweet_truncator(tweets)
  if selective_tweet_shortener(tweets).length > 140
    return tweets[0..136] + "..."
  end
  return tweets
end
