import matplotlib.pyplot as plt
import sys

def main():
	if not sys.argv[1]:
		print "need to specify a file as input"
	with open(sys.argv[1], "r") as file:

		seqs = []
		rtts = []
		for line in file:
			tok = line.split(" ")
			if len(tok) == 8:
				seq = tok[4].split("=")
				rtt = tok[6].split("=")
				seqs.append(seq[1])
				rtts.append(rtt[1])

		fig = plt.figure()
		plt.plot(seqs, rtts)
		plt.xlabel('sequence number')
		plt.ylabel('rtt (ms)')

		if sys.argv[1]:
			title = str(sys.argv[1]).split('.')[0]
			fig.suptitle('RTT: ' + title)
			fig.savefig(title + '.jpg')
		# plt.show()


if __name__ == "__main__":
    main()
