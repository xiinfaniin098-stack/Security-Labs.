# Lab: Network Traffic Analysis & Packet Inspection with Wireshark

## 📌 Overview
In this practical lab, I performed network packet capture analysis using **Wireshark**. I applied advanced display filters to inspect IPv4, TCP, UDP, and DNS traffic, isolating specific IP/MAC addresses and analyzing packet headers to investigate network activity.

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

### 1. Packet Structure & Header Inspection
By examining the expanded subtrees of captured frames, I analyzed deep packet headers:
* **Time to Live (TTL):** Identified a TTL value of **54** in the IPv4 header.
* **Frame Length:** Verified total frame size of **54 bytes** (592 bits on wire).
* **IPv4 Header Length:** Verified standard IPv4 header size of **20 bytes**.

![Packet Inspection Details](./Screenshot%202026-08-01%20133730.png)

---

### 2. DNS Resolution Analysis
Using `udp.port == 53`, I located DNS standard queries and responses resolving the domain `opensource.google.com` to destination IP `142.250.1.139`.

![DNS Filtering Verification](./Screenshot%202026-08-01%20134305.png)

---

### 3. MAC Address & Protocol Verification
Using `eth.addr == 42:01:ac:15:e0:02`, I inspected the encapsulation layer to confirm that the embedded transport payload inside the Ethernet frame was running **UDP / IPv4**.

![MAC Filtering Verification](./Screenshot%202026-08-01%20134428.png)

---

## 🛠️ Skills Demonstrated
* Packet capture (pcap) inspection and frame decoding
* Layer 2 (Data Link) and Layer 3/4 (Network/Transport) header analysis
* Isolating target traffic using precise Wireshark display filters
