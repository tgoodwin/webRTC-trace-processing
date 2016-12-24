rm trial_35/monitor/parse_xml.py 
rm trial_35/receiver/parse_xml.py
rm trial_35/sender/parse_xml.py

cp parse_xml.py trial_35/monitor
cp parse_xml.py trial_35/receiver
cp parse_xml.py trial_35/sender

cd trial_35/monitor
sudo tshark -T pdml -r trial_35.pcap -Y "ip.src == 192.168.1.128 and udp and not stun and not dtls and not dns" > trial_35_sr.xml
sudo tshark -T pdml -r trial_35.pcap -Y "ip.dst == 192.168.1.128 and udp and not stun and not dtls and not dns" > trial_35_rs.xml
python parse_xml.py trial_35_sr.xml radiotap.datarate 100 &
python parse_xml.py trial_35_rs.xml radiotap.datarate 100 &
rm *~
cd ../receiver
sudo tshark -T pdml -r trial_35.pcap -Y "ip.src == 192.168.1.128 and udp and not stun and not dtls and not dns" > trial_35.xml
python parse_xml.py trial_35.xml frame.time_delta 100 &
python parse_xml.py trial_35.xml frame.cap_len 100 &
python parse_xml.py trial_35.xml caplen 100 &
python parse_xml.py trial_35.xml cdf 100 &
rm *~
cd ../sender
sudo tshark -T pdml -r trial_35.pcap -Y "ip.dst == 192.168.1.128 and udp and not stun and not dtls and not dns" > trial_35.xml
python parse_xml.py trial_35.xml frame.time_delta 100 &
python parse_xml.py trial_35.xml frame.cap_len 100 &
python parse_xml.py trial_35.xml caplen 100 &
python parse_xml.py trial_35.xml cdf 100 &
cd ../../

rm trial_36/monitor/parse_xml.py 
rm trial_36/receiver/parse_xml.py
rm trial_36/sender/parse_xml.py

cp parse_xml.py trial_36/monitor
cp parse_xml.py trial_36/receiver
cp parse_xml.py trial_36/sender

cd trial_36/monitor
sudo tshark -T pdml -r trial_36.pcap -Y "ip.src == 192.168.1.128 and udp and not stun and not dtls and not dns" > trial_36_sr.xml
sudo tshark -T pdml -r trial_36.pcap -Y "ip.dst == 192.168.1.128 and udp and not stun and not dtls and not dns" > trial_36_rs.xml
python parse_xml.py trial_36_sr.xml radiotap.datarate 100 &
python parse_xml.py trial_36_rs.xml radiotap.datarate 100 &
rm *~
cd ../receiver
sudo tshark -T pdml -r trial_36.pcap -Y "ip.src == 192.168.1.128 and udp and not stun and not dtls and not dns" > trial_36.xml
python parse_xml.py trial_36.xml frame.time_delta 100 &
python parse_xml.py trial_36.xml frame.cap_len 100 &
python parse_xml.py trial_36.xml caplen 100 &
python parse_xml.py trial_36.xml cdf 100 &
rm *~
cd ../sender
sudo tshark -T pdml -r trial_36.pcap -Y "ip.dst == 192.168.1.128 and udp and not stun and not dtls and not dns" > trial_36.xml
python parse_xml.py trial_36.xml frame.time_delta 100 &
python parse_xml.py trial_36.xml frame.cap_len 100 &
python parse_xml.py trial_36.xml caplen 100 &
python parse_xml.py trial_36.xml cdf 100 &
cd ../../

rm trial_37/monitor/parse_xml.py 
rm trial_37/receiver/parse_xml.py
rm trial_37/sender/parse_xml.py

cp parse_xml.py trial_37/monitor
cp parse_xml.py trial_37/receiver
cp parse_xml.py trial_37/sender

cd trial_37/monitor
sudo tshark -T pdml -r trial_37.pcap -Y "ip.src == 192.168.1.128 and udp and not stun and not dtls and not dns" > trial_37_sr.xml
sudo tshark -T pdml -r trial_37.pcap -Y "ip.dst == 192.168.1.128 and udp and not stun and not dtls and not dns" > trial_37_rs.xml
python parse_xml.py trial_37_sr.xml radiotap.datarate 100 &
python parse_xml.py trial_37_rs.xml radiotap.datarate 100 &
rm *~
cd ../receiver
sudo tshark -T pdml -r trial_37.pcap -Y "ip.src == 192.168.1.128 and udp and not stun and not dtls and not dns" > trial_37.xml
python parse_xml.py trial_37.xml frame.time_delta 100 &
python parse_xml.py trial_37.xml frame.cap_len 100 &
python parse_xml.py trial_37.xml caplen 100 &
python parse_xml.py trial_37.xml cdf 100 &
rm *~
cd ../sender
sudo tshark -T pdml -r trial_37.pcap -Y "ip.dst == 192.168.1.128 and udp and not stun and not dtls and not dns" > trial_37.xml
python parse_xml.py trial_37.xml frame.time_delta 100 &
python parse_xml.py trial_37.xml frame.cap_len 100 &
python parse_xml.py trial_37.xml caplen 100 &
python parse_xml.py trial_37.xml cdf 100 &
cd ../../

rm trial_38/monitor/parse_xml.py 
rm trial_38/receiver/parse_xml.py
rm trial_38/sender/parse_xml.py

cp parse_xml.py trial_38/monitor
cp parse_xml.py trial_38/receiver
cp parse_xml.py trial_38/sender

cd trial_38/monitor
sudo tshark -T pdml -r trial_38.pcap -Y "ip.src == 192.168.1.128 and udp and not stun and not dtls and not dns" > trial_38_sr.xml
sudo tshark -T pdml -r trial_38.pcap -Y "ip.dst == 192.168.1.128 and udp and not stun and not dtls and not dns" > trial_38_rs.xml
python parse_xml.py trial_38_sr.xml radiotap.datarate 100 &
python parse_xml.py trial_38_rs.xml radiotap.datarate 100 &
rm *~
cd ../receiver
sudo tshark -T pdml -r trial_38.pcap -Y "ip.src == 192.168.1.128 and udp and not stun and not dtls and not dns" > trial_38.xml
python parse_xml.py trial_38.xml frame.time_delta 100 &
python parse_xml.py trial_38.xml frame.cap_len 100 &
python parse_xml.py trial_38.xml caplen 100 &
python parse_xml.py trial_38.xml cdf 100 &
rm *~
cd ../sender
sudo tshark -T pdml -r trial_38.pcap -Y "ip.dst == 192.168.1.128 and udp and not stun and not dtls and not dns" > trial_38.xml
python parse_xml.py trial_38.xml frame.time_delta 100 &
python parse_xml.py trial_38.xml frame.cap_len 100 &
python parse_xml.py trial_38.xml caplen 100 &
python parse_xml.py trial_38.xml cdf 100 &
cd ../../

rm trial_39/monitor/parse_xml.py 
rm trial_39/receiver/parse_xml.py
rm trial_39/sender/parse_xml.py

cp parse_xml.py trial_39/monitor
cp parse_xml.py trial_39/receiver
cp parse_xml.py trial_39/sender

cd trial_39/monitor
sudo tshark -T pdml -r trial_39.pcap -Y "ip.src == 192.168.1.128 and udp and not stun and not dtls and not dns" > trial_39_sr.xml
sudo tshark -T pdml -r trial_39.pcap -Y "ip.dst == 192.168.1.128 and udp and not stun and not dtls and not dns" > trial_39_rs.xml
python parse_xml.py trial_39_sr.xml radiotap.datarate 100 &
python parse_xml.py trial_39_rs.xml radiotap.datarate 100 &
rm *~
cd ../receiver
sudo tshark -T pdml -r trial_39.pcap -Y "ip.src == 192.168.1.128 and udp and not stun and not dtls and not dns" > trial_39.xml
python parse_xml.py trial_39.xml frame.time_delta 100 &
python parse_xml.py trial_39.xml frame.cap_len 100 &
python parse_xml.py trial_39.xml caplen 100 &
python parse_xml.py trial_39.xml cdf 100 &
rm *~
cd ../sender
sudo tshark -T pdml -r trial_39.pcap -Y "ip.dst == 192.168.1.128 and udp and not stun and not dtls and not dns" > trial_39.xml
python parse_xml.py trial_39.xml frame.time_delta 100 &
python parse_xml.py trial_39.xml frame.cap_len 100 &
python parse_xml.py trial_39.xml caplen 100 &
python parse_xml.py trial_39.xml cdf 100 &
cd ../../

rm trial_40/monitor/parse_xml.py 
rm trial_40/receiver/parse_xml.py
rm trial_40/sender/parse_xml.py

cp parse_xml.py trial_40/monitor
cp parse_xml.py trial_40/receiver
cp parse_xml.py trial_40/sender

cd trial_40/monitor
sudo tshark -T pdml -r trial_40.pcap -Y "ip.src == 192.168.1.128 and udp and not stun and not dtls and not dns" > trial_40_sr.xml
sudo tshark -T pdml -r trial_40.pcap -Y "ip.dst == 192.168.1.128 and udp and not stun and not dtls and not dns" > trial_40_rs.xml
python parse_xml.py trial_40_sr.xml radiotap.datarate 100 &
python parse_xml.py trial_40_rs.xml radiotap.datarate 100 &
rm *~
cd ../receiver
sudo tshark -T pdml -r trial_40.pcap -Y "ip.src == 192.168.1.128 and udp and not stun and not dtls and not dns" > trial_40.xml
python parse_xml.py trial_40.xml frame.time_delta 100 &
python parse_xml.py trial_40.xml frame.cap_len 100 &
python parse_xml.py trial_40.xml caplen 100 &
python parse_xml.py trial_40.xml cdf 100 &
rm *~
cd ../sender
sudo tshark -T pdml -r trial_40.pcap -Y "ip.dst == 192.168.1.128 and udp and not stun and not dtls and not dns" > trial_40.xml
python parse_xml.py trial_40.xml frame.time_delta 100 &
python parse_xml.py trial_40.xml frame.cap_len 100 &
python parse_xml.py trial_40.xml caplen 100 &
python parse_xml.py trial_40.xml cdf 100 &
cd ../../

