# Lab: Network Traffic Analysis & Packet Inspection with Wireshark

## 📌 Overview
In this practical lab, I performed network packet capture analysis using **Wireshark**. I applied display filters to inspect IPv4, TCP, UDP, and DNS traffic, isolating specific IP/MAC addresses and analyzing packet headers to investigate network activity.

---

## ⚙️ Key Display Filters Used
| Protocol / Target | Wireshark Display Filter | Purpose |
| :--- | :--- | :--- |
| **IP Filtering** | `ip.addr == 142.250.1.139` | Isolates all traffic to/from Google's server IP |
| **MAC Filtering** | `eth.addr == 42:01:ac:15:e0:02` | Tracks traffic associated with a specific network interface |
| **DNS Traffic** | `udp.port == 53` | Filters DNS queries and domain name resolutions |
| **HTTP Traffic** | `tcp.port == 80` | Filters standard unencrypted web traffic |

---

## 🔍 Key Investigations & Findings

### 1. Explore Data with Wireshark
In this task, I opened the sample packet capture file and learned to navigate the core Wireshark interface:
* **Interface Navigation:** Examined captured packets using the **Protocol**, **Length**, and **Info** columns.
* **Visual Classification:** Observed Wireshark's default coloring rules to quickly differentiate traffic types.
* **Protocol Identification:** Navigated the packet list to identify **ICMP** as the protocol used for "Echo (ping) request" traffic.

![Exploring Wireshark Data](./Screenshot%202026-08-01%20133730.png)

---

### 2. IP Address Filtering & Analysis
Using `ip.addr == 142.250.1.139`, I isolated all network communication (ICMP echo requests/replies and TCP traffic) sent to and from Google's server IP.

![IP Filtering Verification](./Screenshot%202026-08-01%20134306.png)
---

### 3. MAC Address & Protocol Verification
Using `eth.addr == 42:01:ac:15:e0:02`, I inspected the encapsulation layer to confirm packet details.

![MAC Filtering Verification](./Screenshot%202026-08-01%20EXACT_MAC_FILENAME.png)

---

## 🛠️ Skills Demonstrated
* Packet capture (pcap) inspection and frame decoding
* Layer 2 (Data Link) and Layer 3/4 (Network/Transport) header analysis
* Isolating target traffic using precise Wireshark display filters

