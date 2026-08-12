# Course 6: Detection & Incident Response Practical Labs

Welcome to the Detection & Incident Response module documentation. This page contains hands-on analysis labs covering GUI-based network inspection using **Wireshark**, command-line traffic capture using **tcpdump**, and intrusion detection analysis using **Suricata**.

---

## 🦈 Part 1: Network Traffic Analysis & Packet Inspection with Wireshark

### 🎯 Overview
In this practical lab, I performed network packet capture analysis using Wireshark. I applied display filters to inspect IPv4, TCP, UDP, and DNS traffic, isolating specific IP addresses and analyzing packet headers to investigate network activity.

### 🔑 Key Display Filters Used
| Protocol / Target | Wireshark Display Filter | Purpose |
| :--- | :--- | :--- |
| **IP Filtering** | `ip.addr == 142.250.1.139` | Isolates all traffic to/from Google's server IP |
| **DNS Traffic** | `udp.port == 53` | Filters DNS queries and domain name resolutions |
| **TCP Traffic** | `tcp.port == 80` | Filters standard unencrypted web traffic |

### 🔍 Key Investigations & Findings

#### 1. Explore Data with Wireshark
In this task, I opened the sample packet capture file and navigated the core Wireshark interface.
* **Interface Navigation:** Examined captured packets using Protocol, Length, and Info columns.
* **Visual Classification:** Observed Wireshark's default coloring rules to quickly differentiate traffic types.
* **Protocol Identification:** Navigated the packet list to identify ICMP as the protocol used for Echo (ping) requests.

![Explore Data](./wireshark_unfiltered_packet_capture_overview.png)

---

#### 2. IP Address Filtering & Analysis
Using `ip.addr == 142.250.1.139`, I isolated all network communication (ICMP echo requests/replies and TCP traffic) sent to and from Google's server IP.

![IP Filtering Verification](./wireshark_ip_addr_filter_142_250_1_139.png)

---

#### 3. Frame & Encapsulation Inspection
Using `ip.addr == 142.250.1.139`, I inspected Frame 64 packet details to analyze TCP payload encapsulation and protocol headers.

![Frame Details Verification](./wireshark_packet_64_tcp_syn_details.png)

---

## 💻 Part 2: Capturing & Filtering Network Traffic with tcpdump

### 🎯 Overview
In this practical lab, I used `tcpdump` in Linux to identify active network interfaces, capture live packet data directly to a `.pcap` file, and apply command-line filters to analyze specific network traffic.

### 🔍 Lab Execution & Proof

#### 1. Identify Network Interfaces
Inspected available interfaces using `ifconfig` and identified active capture interfaces with `sudo tcpdump -D`.

![Identify Interfaces](./01-identify-interfaces.png)

---

#### 2. Inspect Live Traffic
Captured live packet headers on `eth0` with detailed verbosity using `sudo tcpdump -i eth0 -v -c5`.

![Inspect Traffic](./02-inspect-traffic.png)

---

#### 3. Capture Traffic to PCAP File
Saved web packet traffic (TCP port 80) directly to a capture file using `sudo tcpdump -i eth0 -nn -c9 port 80 -w capture.pcap`.

![Capture PCAP](./03-capture-pcap.png)

---

#### 4. Filter Captured Packet Data
Read and filtered the saved `.pcap` file to analyze HTTP request details using `sudo tcpdump -nn -r capture.pcap -v`.

![Filter PCAP](./04-filter-pcap.png)


---

## Part 3: Intrusion Detection & Rule Analysis with Suricata

### Overview
In this practical lab, I configured and executed custom Suricata NIDS rules against packet captures to inspect signature logic, trigger security alerts, and analyze network telemetry.

### Lab Execution & Proof

#### 1. Examine Custom Suricata Rule
Inspected `custom.rules` to analyze signature logic, HTTP method matching criteria, and rule metadata using `cat custom.rules`.
![Examine Custom Rule](./suricata-task1-inspect-custom-rules.png)

#### 2. Trigger Rule & Analyze Fast Log
Executed Suricata against `sample.pcap` using `sudo suricata -r sample.pcap -S custom.rules -k none` and verified triggered security alerts with `cat /var/log/suricata/fast.log`.
![Trigger Custom Rule](./suricata-task2-pcap-execution-and-fast-log.png)

## 🛠️ Summary of Skills Demonstrated
* **GUI Packet Analysis:** Wireshark display filters, frame decoding, protocol header inspection.
* **CLI Network Analysis:** Command-line packet capture with `tcpdump`, `.pcap` logging, syntax-based packet filtering.
* **NIDS Rule Analysis:** Writing Suricata signature rules, processing offline captures, and analyzing `fast.log` alert outputs.
