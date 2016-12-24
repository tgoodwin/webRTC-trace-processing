import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import sys

def main():
	input_file = sys.argv[1]
	slowlist = []
	with open(input_file) as f:
		for line in f:
			entries = line.split(',')
			if len(entries) > 1:
				slowlist.append(entries[1])

	starting_seq = slowlist[0]
	ending_seq = slowlist[len(slowlist) - 1]
	curr_seq = starting_seq
	repeats = 0
	ending_seq = int(ending_seq)
	starting_seq = int(starting_seq)
	print starting_seq, ending_seq
	larger = max(starting_seq, ending_seq)
	smaller = min(starting_seq, ending_seq)
	print larger, smaller
	size = larger - smaller
	duplicates = []
	print 'size', size
	j = 0
	i = 0
	while(i < len(slowlist) - 1):
		if int(slowlist[i + 1]) != int(curr_seq): # no duplicate, move forward
			curr_seq = slowlist[i + 1]
			duplicates.append(repeats)
			repeats = 0
		else:
			repeats += 1
		i += 1

	fig = plt.figure()
	plt.plot(range(len(duplicates)), duplicates)
	avg_dups = np.mean(duplicates)
	percent_dups = (np.sum(duplicates) / float(len(slowlist))) * 100
	axes = plt.gca()
	plt.ylim(0, 15)
	plt.xlabel('sequence number')
	plt.ylabel('number of duplicates')

	if sys.argv[1]:
		title = sys.argv[1].split('.')[0]
		title = title.split('/')[-1]
		fig.suptitle(title + ': avg # duplicates: ' + str(round(avg_dups, 3)) + ', total % duplicates: ' + str(round(percent_dups, 3)) + '%')
		fig.savefig(title + '.jpg')





if __name__ == "__main__":
	main()