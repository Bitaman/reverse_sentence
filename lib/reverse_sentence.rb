# A method to reverse the words in a sentence, in place.
# Time complexity: ?
# Space complexity: ?
def reverse_sentence(my_sentence)
  return nil if my_sentence == nil
  start_index = 0
  end_index = my_sentence.length
  string = string_reverse(my_sentence, start_index, end_index)
  sentence = reverse_words(string)

  return sentence 
end
def reverse_words(my_words)
  if my_words
    word_start = 0
    word_end = 0
    i = 0
    while i < (my_words.length)
      if my_words[i] != " "
        word_start = i
        until my_words[i] == " " || i == my_words.length
          i += 1
        end
       word_end = i
       string_reverse(my_words, word_start, word_end)
      end
      i += 1
    end
    return my_words
  else 
    return nil
  end
end
def string_reverse(my_string, start_index, end_index)
  (((end_index + 1) - start_index) / 2).times do |i|
    temp = my_string[start_index + i]
    my_string[start_index + i] = my_string[end_index - (i + 1)]
    my_string[end_index - (i + 1)] = temp
  end
  return my_string
end


