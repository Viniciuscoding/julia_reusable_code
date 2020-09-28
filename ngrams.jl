module ngrams
    # text = the text body you want to create ngrams
    # n = number of ngrams desired
  
    function ngram(text::String, n::Int)
        tokens = split(text)
        bucket = Dict()
        if n < 1
            println("Any number equal or less than 0 is not an ngram.\nPlease add a positive integer number greater than 0 as a valid ngram number.")
        elseif n > len(tokens)
            println("The number of ngrams is larger than the text body length.\nPlease add a ngram number smaller than your text body length.")
        else
            if length(tokens) < 1
                println("empty string is not valid")
            else
                for i in 0:(length(tokens)-n+1)
                    gram = join(tokens[i:i+n], " ")
                    if gram in bucket
                        bucket[gram] += 1
                    else
                        bucket[gram] = 1
                    end
                end
            end
        end
        return bucket
    end
end
