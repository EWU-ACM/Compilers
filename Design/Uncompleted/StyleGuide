import random																			#Do we want case determined Class/function destinctions?
import sys

def mimic_dict(string filename):														#Case insensitive classes/functions/variables?
	file* fin = open(filename) 															#
	dict mimic = {}																		#Do we want built in dictionaries?
	string prev = ' '																	#Do we want to write a string library or force use of char pointers?
	for word_line in fin:																#For each? Maybe?
		for word in word_line.split():										
			if prev != ' ':
				mimic[prev] = []
			prev = word
	fin.seek(0)
	prev = ' '
	for word_line in fin:
		for word in word_line.split():
			if prev != ' ' and word not in mimic[prev]: 
				mimic[prev].append(word)
			prev = word
	return mimic


def print_mimic(dict mimic_dict,string word):
	"""Given mimic dict and start word, prints 200 random words."""
	print(word + ' ')
	if len(mimic_dict) == 0:
		print('Something is wrong')
		sys.exit(1)
	if word in mimic_dict:
		for i in range(0, 200):
			word = mimic_dict[word][random.randrange(len(mimic_dict[word]))]
			print(word + ' ')
	else:
		list temp = []																	#lists as built in?
		while len(temp) == 0:
			temp = mimic_dict[random.choice(mimic_dict.key())]
		print_mimic(mimic_dict, random.choice(mimic_dict.keys()))


def main():																				#For the sake of ease we can require main to be defined similar to functions
	if len(sys.argv) != 2:																#and treat the definition of main as a keyword call of main.
		print('usage: ./mimic.py file-to-read')
		sys.exit(1)																		
	dict toPrint = mimic_dict(sys.argv[1])
	wait()																				#Parallel by some means Either it will autowait at 
	print_mimic(toPrint, '')															#the print call, or will be instructed to wait via keywords

