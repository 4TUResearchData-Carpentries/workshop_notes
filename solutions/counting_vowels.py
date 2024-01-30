
vowels = 'aeiouAEIOU'
sentence = 'Mary had a little lamb.'
count = 0
for char in sentence:
    if char in vowels:
        count = count + 1

print('The number of vowels in this string is ' + str(count))