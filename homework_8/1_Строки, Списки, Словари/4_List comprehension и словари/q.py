words = ["hello", "world", "python", "code"]

lengths = [len(word) for word in words]
long_words = [word for word in words if len(word) > 4]
word_lengths = {word: len(word) for word in words}

print(lengths)
print(long_words)
print(word_lengths)
