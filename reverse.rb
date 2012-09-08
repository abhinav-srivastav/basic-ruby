def reverse_sentence(input)
	input.split().reverse.join(" ")
end

puts reverse_sentence("An apple a day keeps the doctor away")