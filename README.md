# webRTC-trace-processing
Scripts to produce various statistics and plots for webRTC video call traces

##make_graphs.sh
This file is used in conjunction with `parse_xml.py`. It is an outline of a shell script that will export an XML representation of a `.pcap` format network trace (e.g. Wireshark output). The script then passes this XML file as input into `parse_xml.py`, and passes a variety of different parameters to produce a collection of different plots.

The script hardcodes a filtering query on the pcap trace. `"ip.src == 192.168.1.128 and udp and not stun and not dtls and not dns"` and `"ip.dst == 192.168.1.128 and udp and not stun and not dtls and not dns" > trial_35_rs.xml` produce XML files for trace data sent from a designated sender and receiver, respectively.

In these experiments, the server was at a constant address of `192.168.1.128`, thus packets originating from this IP reflect the sender -> receiver transmission, and packets addressed to `192.168.1.128` reflect the receiver -> sender transmission.

This address should be changed as necessary.

##parse_xml.py
A python script that processes XML representations of Wireshark captures and can output a variety of plots depending on input parameters. Plot types available are
- datarate vs time
- throughput vs time
- time deltas vs time
- a CDF of time deltas
- packet size vs time

Usage for these input parameters is best illustrated in `make_graphs.sh`.

##streamplotter.py
This script produces a histogram-like plot of duplicate packet events in a RTP transmission. The script takes in a CSV file of an RTP stream, which can be produced from a WebRTC trace in Wireshark by the following steps:
0. Filter (using the Wireshark Filter bar at the top of the window) your trace such that the src is either only your sender or your receiver. For example, if your sender IP is `192.168.1.128` and your receiver IP is `192.168.1.129`, you should filter by `ip.src==192.168.1.128`, complete steps 1-7, and then start over at step 0 with `ip.src=192.168.1.129`.
1. select a UDP packet in the trace between your known sender and receiver.
2. Right click on the packet, and select **Decode as...** and then select **RTP**. You should see a sequence number column after the decoding is complete (~3 seconds).
4. Select an RTP packet, and then from the top menu, select **Telephony -> RTP Stream Analysis**. This will open up the RTP stream analysis tool.
5. You should see a listing of packets starting at the designated sender, as well as some potential "duplicate packet" or "incorrect timestamp" labeling.
6. In the bottom right, select **Export** and then Export As **Forward Stream CSV**.
7. After the CSV file has been exported to your filesystem, run `python streamplotter.py <name_of_the_csv_from_step_6>.csv` to produce a duplicate packet plot as a PNG. The filename will be the same as the CSV filename.

##rtt_plotter.py
This script plots round trip time over time for a trace collected from the **ping** UNIX command. To produce a trace text file, for example, run `ping 192.168.1.128 > rtt_trace_example.txt`. To produce a plot of the **ping** results, run `python rtt_plotter.py rtt_trace_example.txt`.
