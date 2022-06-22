# PE-2B Commands Output

## Table of Contents

- [enable](#enable)
- [show system environment all](#show-system-environment-all)
- [bash cat /proc/cpuinfo](#bash-cat-/proc/cpuinfo)
- [bash cat /proc/meminfo](#bash-cat-/proc/meminfo)
- [show inventory](#show-inventory)
- [show version](#show-version)
- [show boot-config](#show-boot-config)
- [show logging](#show-logging)
- [show vrf](#show-vrf)
- [show ip interface brief](#show-ip-interface-brief)
- [show interfaces](#show-interfaces)
- [show ip route vrf all](#show-ip-route-vrf-all)
- [show clock](#show-clock)
- [show ntp status](#show-ntp-status)
- [show ntp associations](#show-ntp-associations)
- [dir all-filesystems](#dir-all-filesystems)
- [show running-config](#show-running-config)
## bash cat /proc/cpuinfo

```
processor	: 0
vendor_id	: GenuineIntel
cpu family	: 6
model		: 6
model name	: QEMU Virtual CPU version 2.5+
stepping	: 3
microcode	: 0x1
cpu MHz		: 0.000
cache size	: 16384 KB
physical id	: 0
siblings	: 1
core id		: 0
cpu cores	: 1
apicid		: 0
initial apicid	: 0
fpu		: yes
fpu_exception	: yes
cpuid level	: 13
wp		: yes
flags		: fpu de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pse36 clflush mmx fxsr sse sse2 syscall nx lm rep_good nopl xtopology cpuid pni cx16 x2apic hypervisor lahf_lm cpuid_fault
bugs		: cpu_meltdown spectre_v1 spectre_v2 spec_store_bypass l1tf mds swapgs itlb_multihit
bogomips	: 1339.39
clflush size	: 64
cache_alignment	: 64
address sizes	: 40 bits physical, 48 bits virtual
power management:
```
## bash cat /proc/meminfo

```
MemTotal:        2004568 kB
MemFree:           53688 kB
MemAvailable:     790856 kB
Buffers:          162192 kB
Cached:           828040 kB
SwapCached:            0 kB
Active:          1249348 kB
Inactive:         541532 kB
Active(anon):     873048 kB
Inactive(anon):   168160 kB
Active(file):     376300 kB
Inactive(file):   373372 kB
Unevictable:           0 kB
Mlocked:               0 kB
SwapTotal:             0 kB
SwapFree:              0 kB
Dirty:                28 kB
Writeback:             0 kB
AnonPages:        800648 kB
Mapped:           580452 kB
Shmem:            240560 kB
Slab:             119580 kB
SReclaimable:      60632 kB
SUnreclaim:        58948 kB
KernelStack:        2940 kB
PageTables:        14112 kB
NFS_Unstable:          0 kB
Bounce:                0 kB
WritebackTmp:          0 kB
CommitLimit:     1002284 kB
Committed_AS:    1330360 kB
VmallocTotal:   34359738367 kB
VmallocUsed:           0 kB
VmallocChunk:          0 kB
Percpu:              220 kB
HardwareCorrupted:     0 kB
CmaTotal:              0 kB
CmaFree:               0 kB
HugePages_Total:       0
HugePages_Free:        0
HugePages_Rsvd:        0
HugePages_Surp:        0
Hugepagesize:       2048 kB
Hugetlb:               0 kB
DirectMap4k:       83840 kB
DirectMap2M:     2013184 kB
```
## dir all-filesystems

```
Directory of file:/

       dr-x          80           Apr 12 14:11  bin
       dr-x         234           Feb 28 13:40  boot
       drwx        2940           Apr 12 14:09  dev
       drwx        1200           May 10 09:10  etc
       drwx          60           Apr 12 14:09  export
       drwx          80           May 10 08:49  home
       dr-x          60           Feb 28 13:41  lib
       drwx        1178           Feb 28 13:41  lib64
       drwx           3           Apr 11  2018  media
       drwx          80           Apr 12 14:09  mnt
       drwx           0           Apr 12 14:07  monitor
       drwx          29           Feb 28 13:41  opt
       drwx         100           Apr 12 14:10  persist
       dr-x           0           Apr 12 14:07  proc
       dr-x          60           Apr 12 14:21  root
       dr-x         311           Feb 28 13:41  rootfs-i386
       drwx        1380            May 9 16:10  run
       dr-x          80           Apr 12 14:09  sbin
       drwx           3           Apr 11  2018  srv
       dr-x           0           Apr 12 14:09  sys
       drwx         220           May 10 09:44  tmp
       drwx         120           Feb 28 13:40  usr
       drwx         100           Apr 12 14:09  var

307904512 bytes total (227135488 bytes free)

Directory of flash:/

       -rw-        1617           Apr 12 14:10  AsuFastPktTransmit.log
       drwx        4096           Apr 12 14:20  Fossil
       -rw-         994           Apr 12 14:10  SsuRestore.log
       -rw-         994           Apr 12 14:10  SsuRestoreLegacy.log
       -rw-     7209797           Apr 12 14:04  TerminAttr-1.19.2-1.swix
       -rw-          32           Apr 12 14:04  boot-config
       -rw-          25           Apr 12 14:04  boot-extensions
       -rw-        3266           Apr 12 10:05  cvp-config
       drwx        4096           Apr 12 14:18  debug
       drwx        4096            Apr 8 13:46  fastpkttx.backup
       drwx       16384            Mar 2 12:51  lost+found
       drwx        4096           May 10 09:47  persist
       drwx        4096            Apr 8 13:50  schedule
       -rw-        5797           May 10 09:10  startup-config
       -rw-   495254600           Apr 12 14:03  vEOS-lab-4.27.3F.swi
       -rw-   487567618            Mar 2 12:51  vEOS-lab.swi
       -rw-           0           Apr 12 09:54  zerotouch-config

4093313024 bytes total (2553270272 bytes free)

Directory of system:/

       -rw-        5726              <no date>  running-config

No space information available
```
## enable

```

```
## show boot-config

```
Software image: flash:/vEOS-lab-4.27.3F.swi
Console speed: (not set)
Aboot password (encrypted): (not set)
Memory test iterations: (not set)
```
## show clock

```
Tue May 10 09:48:11 2022
Timezone: UTC
Clock source: local
```
## show interfaces

```
Ethernet1 is up, line protocol is up (connected)
  Hardware is Ethernet, address is 5000.0009.0001 (bia 5000.0009.0001)
  Member of Port-Channel1
  Ethernet MTU 9214 bytes, BW 10000000 kbit
  Full-duplex, 10Gb/s, auto negotiation: off, uni-link: n/a
  Up 27 days, 19 hours, 32 minutes, 8 seconds
  Loopback Mode : None
  2 link status changes since last clear
  Last clearing of "show interface" counters never
  5 minutes input rate 0 bps (0.0% with framing overhead), 0 packets/sec
  5 minutes output rate 0 bps (0.0% with framing overhead), 0 packets/sec
     2379152 packets input, 307645234 bytes
     Received 1 broadcasts, 2379128 multicast
     0 runts, 0 giants
     0 input errors, 0 CRC, 0 alignment, 0 symbol, 0 input discards
     0 PAUSE input
     1218087 packets output, 153283456 bytes
     Sent 4 broadcasts, 1218083 multicast
     0 output errors, 0 collisions
     0 late collision, 0 deferred, 0 output discards
     0 PAUSE output
Ethernet2 is up, line protocol is up (connected)
  Hardware is Ethernet, address is 5000.006b.2e70
  Description: P2P_LINK_TO_P4_Ethernet2
  Internet address is 100.64.48.15/31
  Broadcast address is 255.255.255.255
  IP MTU 1500 bytes (default), BW 10000000 kbit
  Full-duplex, 10Gb/s, auto negotiation: off, uni-link: n/a
  Up 27 days, 19 hours, 32 minutes, 8 seconds
  Loopback Mode : None
  2 link status changes since last clear
  Last clearing of "show interface" counters never
  5 minutes input rate 0 bps (0.0% with framing overhead), 0 packets/sec
  5 minutes output rate 0 bps (0.0% with framing overhead), 0 packets/sec
     1340400 packets input, 154700136 bytes
     Received 1 broadcasts, 656580 multicast
     0 runts, 0 giants
     0 input errors, 0 CRC, 0 alignment, 0 symbol, 0 input discards
     0 PAUSE input
     1310079 packets output, 146961987 bytes
     Sent 2 broadcasts, 656019 multicast
     0 output errors, 0 collisions
     0 late collision, 0 deferred, 0 output discards
     0 PAUSE output
Ethernet3 is up, line protocol is up (connected)
  Hardware is Ethernet, address is 5000.0009.0003 (bia 5000.0009.0003)
  Description: A_CPE2_SITE2_PO2_Ethernet4
  Member of Port-Channel3
  Ethernet MTU 9214 bytes, BW 10000000 kbit
  Full-duplex, 10Gb/s, auto negotiation: off, uni-link: n/a
  Up 27 days, 19 hours, 32 minutes, 7 seconds
  Loopback Mode : None
  2 link status changes since last clear
  Last clearing of "show interface" counters never
  5 minutes input rate 0 bps (0.0% with framing overhead), 0 packets/sec
  5 minutes output rate 0 bps (0.0% with framing overhead), 0 packets/sec
     2390402 packets input, 308524528 bytes
     Received 7 broadcasts, 2389806 multicast
     0 runts, 0 giants
     0 input errors, 0 CRC, 0 alignment, 0 symbol, 0 input discards
     0 PAUSE input
     1267156 packets output, 159144400 bytes
     Sent 0 broadcasts, 1266962 multicast
     0 output errors, 0 collisions
     0 late collision, 0 deferred, 0 output discards
     0 PAUSE output
Ethernet4 is up, line protocol is up (connected)
  Hardware is Ethernet, address is 5000.006b.2e70
  Description: ROUTED_PORTS_CPE2
  Internet address is 30.30.30.7/31
  Broadcast address is 255.255.255.255
  IP MTU 1500 bytes (default), BW 10000000 kbit
  Full-duplex, 10Gb/s, auto negotiation: off, uni-link: n/a
  Up 27 days, 19 hours, 32 minutes, 7 seconds
  Loopback Mode : None
  2 link status changes since last clear
  Last clearing of "show interface" counters never
  5 minutes input rate 0 bps (0.0% with framing overhead), 0 packets/sec
  5 minutes output rate 0 bps (0.0% with framing overhead), 0 packets/sec
     0 packets input, 0 bytes
     Received 0 broadcasts, 0 multicast
     0 runts, 0 giants
     0 input errors, 0 CRC, 0 alignment, 0 symbol, 0 input discards
     0 PAUSE input
     1226719 packets output, 154370243 bytes
     Sent 0 broadcasts, 1226719 multicast
     0 output errors, 0 collisions
     0 late collision, 0 deferred, 0 output discards
     0 PAUSE output
Ethernet5 is up, line protocol is up (connected)
  Hardware is Ethernet, address is 5000.0009.0005 (bia 5000.0009.0005)
  Ethernet MTU 9214 bytes, BW 10000000 kbit
  Full-duplex, 10Gb/s, auto negotiation: off, uni-link: n/a
  Up 27 days, 19 hours, 32 minutes, 7 seconds
  Loopback Mode : None
  2 link status changes since last clear
  Last clearing of "show interface" counters never
  5 minutes input rate 0 bps (0.0% with framing overhead), 0 packets/sec
  5 minutes output rate 0 bps (0.0% with framing overhead), 0 packets/sec
     0 packets input, 0 bytes
     Received 0 broadcasts, 0 multicast
     0 runts, 0 giants
     0 input errors, 0 CRC, 0 alignment, 0 symbol, 0 input discards
     0 PAUSE input
     1257835 packets output, 158157231 bytes
     Sent 0 broadcasts, 1257835 multicast
     0 output errors, 0 collisions
     0 late collision, 0 deferred, 0 output discards
     0 PAUSE output
Ethernet6 is up, line protocol is up (connected)
  Hardware is Ethernet, address is 5000.0009.0006 (bia 5000.0009.0006)
  Ethernet MTU 9214 bytes, BW 10000000 kbit
  Full-duplex, 10Gb/s, auto negotiation: off, uni-link: n/a
  Up 27 days, 19 hours, 32 minutes, 8 seconds
  Loopback Mode : None
  2 link status changes since last clear
  Last clearing of "show interface" counters never
  5 minutes input rate 0 bps (0.0% with framing overhead), 0 packets/sec
  5 minutes output rate 0 bps (0.0% with framing overhead), 0 packets/sec
     0 packets input, 0 bytes
     Received 0 broadcasts, 0 multicast
     0 runts, 0 giants
     0 input errors, 0 CRC, 0 alignment, 0 symbol, 0 input discards
     0 PAUSE input
     1257835 packets output, 158157231 bytes
     Sent 0 broadcasts, 1257835 multicast
     0 output errors, 0 collisions
     0 late collision, 0 deferred, 0 output discards
     0 PAUSE output
Ethernet7 is up, line protocol is up (connected)
  Hardware is Ethernet, address is 5000.0009.0007 (bia 5000.0009.0007)
  Ethernet MTU 9214 bytes, BW 10000000 kbit
  Full-duplex, 10Gb/s, auto negotiation: off, uni-link: n/a
  Up 27 days, 19 hours, 32 minutes, 8 seconds
  Loopback Mode : None
  2 link status changes since last clear
  Last clearing of "show interface" counters never
  5 minutes input rate 0 bps (0.0% with framing overhead), 0 packets/sec
  5 minutes output rate 0 bps (0.0% with framing overhead), 0 packets/sec
     0 packets input, 0 bytes
     Received 0 broadcasts, 0 multicast
     0 runts, 0 giants
     0 input errors, 0 CRC, 0 alignment, 0 symbol, 0 input discards
     0 PAUSE input
     1257836 packets output, 158157354 bytes
     Sent 0 broadcasts, 1257836 multicast
     0 output errors, 0 collisions
     0 late collision, 0 deferred, 0 output discards
     0 PAUSE output
Ethernet8 is up, line protocol is up (connected)
  Hardware is Ethernet, address is 5000.0009.0008 (bia 5000.0009.0008)
  Ethernet MTU 9214 bytes, BW 10000000 kbit
  Full-duplex, 10Gb/s, auto negotiation: off, uni-link: n/a
  Up 27 days, 19 hours, 32 minutes, 8 seconds
  Loopback Mode : None
  2 link status changes since last clear
  Last clearing of "show interface" counters never
  5 minutes input rate 0 bps (0.0% with framing overhead), 0 packets/sec
  5 minutes output rate 0 bps (0.0% with framing overhead), 0 packets/sec
     0 packets input, 0 bytes
     Received 0 broadcasts, 0 multicast
     0 runts, 0 giants
     0 input errors, 0 CRC, 0 alignment, 0 symbol, 0 input discards
     0 PAUSE input
     1257835 packets output, 158157231 bytes
     Sent 0 broadcasts, 1257835 multicast
     0 output errors, 0 collisions
     0 late collision, 0 deferred, 0 output discards
     0 PAUSE output
Loopback0 is up, line protocol is up (connected)
  Hardware is Loopback
  Description: MPLS_Overlay_peering
  Internet address is 100.70.0.14/32
  Broadcast address is 255.255.255.255
  IP MTU 65535 bytes (default)
  Up 27 days, 19 hours, 30 minutes, 40 seconds
Management1 is up, line protocol is up (connected)
  Hardware is Ethernet, address is 5000.0009.0000 (bia 5000.0009.0000)
  Description: oob_management
  Internet address is 10.30.30.109/24
  Broadcast address is 255.255.255.255
  IP MTU 1500 bytes (default), BW 1000000 kbit
  Full-duplex, 1Gb/s, auto negotiation: on, uni-link: n/a
  Up 27 days, 19 hours, 30 minutes, 29 seconds
  Loopback Mode : None
  6 link status changes since last clear
  Last clearing of "show interface" counters never
  5 minutes input rate 6.08 kbps (0.0% with framing overhead), 8 packets/sec
  5 minutes output rate 23.3 kbps (0.0% with framing overhead), 9 packets/sec
     16580251 packets input, 1448903871 bytes
     Received 857 broadcasts, 3189337 multicast
     0 runts, 0 giants
     0 input errors, 0 CRC, 0 alignment, 0 symbol, 0 input discards
     0 PAUSE input
     15225668 packets output, 2562820375 bytes
     Sent 4 broadcasts, 80082 multicast
     0 output errors, 0 collisions
     0 late collision, 0 deferred, 0 output discards
     0 PAUSE output
Port-Channel1 is up, line protocol is up (connected)
  Hardware is Port-Channel, address is 5000.006b.2e70
  IP MTU 1500 bytes (default), BW 10000000 kbit
  Full-duplex, 10Gb/s 
  Active members in this channel: 1
  ... Ethernet1 , Full-duplex, 10Gb/s
  Fallback mode is: off
  Up 18 hours, 55 minutes, 58 seconds
  2 link status changes since last clear
  Last clearing of "show interface" counters never
  5 minutes input rate 0 bps (0.0% with framing overhead), 0 packets/sec
  5 minutes output rate 0 bps (0.0% with framing overhead), 0 packets/sec
     4543 packets input, 670112 bytes
     Received 0 broadcasts, 4543 multicast
     0 input errors, 0 input discards
     4545 packets output, 668134 bytes
     Sent 0 broadcasts, 4545 multicast
     0 output errors, 0 output discards
Port-Channel3 is up, line protocol is up (connected)
  Hardware is Port-Channel, address is 5000.0009.0003
  Description: A_CPE2_SITE2_PO2_EVPN-A-A-PortChannel
  Ethernet MTU 9214 bytes, BW 10000000 kbit
  Full-duplex, 10Gb/s 
  Active members in this channel: 1
  ... Ethernet3 , Full-duplex, 10Gb/s
  Fallback mode is: off
  Up 18 hours, 56 minutes
  2 link status changes since last clear
  Last clearing of "show interface" counters never
  5 minutes input rate 0 bps (0.0% with framing overhead), 0 packets/sec
  5 minutes output rate 0 bps (0.0% with framing overhead), 0 packets/sec
     18728 packets input, 2001520 bytes
     Received 2 broadcasts, 18350 multicast
     0 input errors, 0 input discards
     45040 packets output, 5509144 bytes
     Sent 0 broadcasts, 44949 multicast
     0 output errors, 0 output discards
Vlan1002 is up, line protocol is up (connected)
  Hardware is Vlan, address is 5000.006b.2e70 (bia 5000.006b.2e70)
  Description: TENANT_A_SITE2_IRB
  Internet address is 10.1.20.3/27
  Broadcast address is 255.255.255.255
  IP MTU 1500 bytes (default)
  Up 18 hours, 56 minutes, 3 seconds
```
## show inventory

```
System information
  Model                    Description                                         
  ------------------------ ----------------------------------------------------
  vEOS-lab                 vEOS for lab use                                    

  HW Version  Serial Number                    Mfg Date   Epoch
  ----------- -------------------------------- ---------- -----
              33F5ACC51468B017F66BCBB8BBD454F4                 

System has 9 ports
  Type               Count
  ------------------ ----
  Management         1   
  Switched           6   
  SwitchedBootstrap  2
```
## show ip interface brief

```
Address
Interface           IP Address            Status       Protocol            MTU    Owner  
------------------- --------------------- ------------ -------------- ----------- -------
Ethernet2           100.64.48.15/31       up           up                 1500           
Ethernet4           30.30.30.7/31         up           up                 1500           
Loopback0           100.70.0.14/32        up           up                65535           
Management1         10.30.30.109/24       up           up                 1500           
Port-Channel1       unassigned            up           up                 1500           
Vlan1002            10.1.20.3/27          up           up                 1500
```
## show ip route vrf all

```
VRF: default
Codes: C - connected, S - static, K - kernel, 
       O - OSPF, IA - OSPF inter area, E1 - OSPF external type 1,
       E2 - OSPF external type 2, N1 - OSPF NSSA external type 1,
       N2 - OSPF NSSA external type2, B - Other BGP Routes,
       B I - iBGP, B E - eBGP, R - RIP, I L1 - IS-IS level 1,
       I L2 - IS-IS level 2, O3 - OSPFv3, A B - BGP Aggregate,
       A O - OSPF Summary, NG - Nexthop Group Static Route,
       V - VXLAN Control Service, M - Martian,
       DH - DHCP client installed default route,
       DP - Dynamic Policy Route, L - VRF Leaked,
       G  - gRIBI, RC - Route Cache Route

Gateway of last resort is not set

 C        100.64.48.14/31 is directly connected, Ethernet2
 I L2     100.70.0.11/32 [115/210] via 100.64.48.14, Ethernet2
 I L2     100.70.0.12/32 [115/160] via 100.64.48.14, Ethernet2
 I L2     100.70.0.13/32 [115/160] via 100.64.48.14, Ethernet2
 C        100.70.0.14/32 is directly connected, Loopback0
 I L2     100.70.0.21/32 [115/160] via 100.64.48.14, Ethernet2
 I L2     100.70.0.31/32 [115/160] via 100.64.48.14, Ethernet2
 I L2     100.70.0.32/32 [115/110] via 100.64.48.14, Ethernet2
 I L2     100.70.0.33/32 [115/110] via 100.64.48.14, Ethernet2
 I L2     100.70.0.34/32 [115/60] via 100.64.48.14, Ethernet2


VRF: MGMT
Codes: C - connected, S - static, K - kernel, 
       O - OSPF, IA - OSPF inter area, E1 - OSPF external type 1,
       E2 - OSPF external type 2, N1 - OSPF NSSA external type 1,
       N2 - OSPF NSSA external type2, B - Other BGP Routes,
       B I - iBGP, B E - eBGP, R - RIP, I L1 - IS-IS level 1,
       I L2 - IS-IS level 2, O3 - OSPFv3, A B - BGP Aggregate,
       A O - OSPF Summary, NG - Nexthop Group Static Route,
       V - VXLAN Control Service, M - Martian,
       DH - DHCP client installed default route,
       DP - Dynamic Policy Route, L - VRF Leaked,
       G  - gRIBI, RC - Route Cache Route

Gateway of last resort:
 S        0.0.0.0/0 [1/0] via 10.30.30.1, Management1

 C        10.30.30.0/24 is directly connected, Management1

! IP routing not enabled

VRF: TENANT_A_IPVPN
Codes: C - connected, S - static, K - kernel, 
       O - OSPF, IA - OSPF inter area, E1 - OSPF external type 1,
       E2 - OSPF external type 2, N1 - OSPF NSSA external type 1,
       N2 - OSPF NSSA external type2, B - Other BGP Routes,
       B I - iBGP, B E - eBGP, R - RIP, I L1 - IS-IS level 1,
       I L2 - IS-IS level 2, O3 - OSPFv3, A B - BGP Aggregate,
       A O - OSPF Summary, NG - Nexthop Group Static Route,
       V - VXLAN Control Service, M - Martian,
       DH - DHCP client installed default route,
       DP - Dynamic Policy Route, L - VRF Leaked,
       G  - gRIBI, RC - Route Cache Route

Gateway of last resort is not set

 B I      30.30.30.0/31 [200/0] via 100.70.0.11/32, IS-IS SR tunnel index 2, label 100001
                                   via 100.64.48.14, Ethernet2, label 900101
 B I      30.30.30.2/31 [200/0] via 100.70.0.12/32, IS-IS SR tunnel index 3, label 100000
                                   via 100.64.48.14, Ethernet2, label 900102
 B I      30.30.30.4/31 [200/0] via 100.70.0.13/32, IS-IS SR tunnel index 8, label 100000
                                   via 100.64.48.14, Ethernet2, label 900103
 C        30.30.30.6/31 is directly connected, Ethernet4


VRF: TENANT_A_L3VPN
Codes: C - connected, S - static, K - kernel, 
       O - OSPF, IA - OSPF inter area, E1 - OSPF external type 1,
       E2 - OSPF external type 2, N1 - OSPF NSSA external type 1,
       N2 - OSPF NSSA external type2, B - Other BGP Routes,
       B I - iBGP, B E - eBGP, R - RIP, I L1 - IS-IS level 1,
       I L2 - IS-IS level 2, O3 - OSPFv3, A B - BGP Aggregate,
       A O - OSPF Summary, NG - Nexthop Group Static Route,
       V - VXLAN Control Service, M - Martian,
       DH - DHCP client installed default route,
       DP - Dynamic Policy Route, L - VRF Leaked,
       G  - gRIBI, RC - Route Cache Route

Gateway of last resort is not set

 O E2     10.1.10.4/32 [110/1] via 10.1.20.2, Vlan1002
 O E2     10.1.10.0/27 [110/1] via 10.1.20.2, Vlan1002
 C        10.1.20.0/27 is directly connected, Vlan1002
```
## show logging

```
Syslog logging: enabled
Buffer logging: level debugging
Console logging: level errors
Persistent logging: disabled
Monitor logging: level errors
Synchronous logging: disabled
Trap logging: level informational
Sequence numbers: disabled
Syslog facility: local4
Hostname format: Hostname only
Repeat logging interval: disabled
Repeat messages: disabled
Root login logging: disabled

External configuration:
    active: 
    inactive: 

Facility                   Severity            Effective Severity
--------------------       -------------       ------------------
aaa                        debugging           debugging    
accounting                 debugging           debugging    
acl                        debugging           debugging    
agent                      debugging           debugging    
ale                        debugging           debugging    
arp                        debugging           debugging    
bfd                        debugging           debugging    
bgp                        debugging           debugging    
bmp                        debugging           debugging    
capacity                   debugging           debugging    
capi                       debugging           debugging    
clear                      debugging           debugging    
cvx                        debugging           debugging    
dataplane                  debugging           debugging    
dhcp                       debugging           debugging    
dmf                        debugging           debugging    
dot1x                      debugging           debugging    
dot1xhttp                  debugging           debugging    
dscp                       debugging           debugging    
envmon                     debugging           debugging    
eth                        debugging           debugging    
eventmon                   debugging           debugging    
extension                  debugging           debugging    
fhrp                       debugging           debugging    
flow                       debugging           debugging    
forwarding                 debugging           debugging    
fru                        debugging           debugging    
fwk                        debugging           debugging    
gmp                        debugging           debugging    
hardware                   debugging           debugging    
health                     debugging           debugging    
httpservice                debugging           debugging    
igmp                       debugging           debugging    
igmpsnooping               debugging           debugging    
influxtelemetry            debugging           debugging    
int                        debugging           debugging    
intf                       debugging           debugging    
ip6routing                 debugging           debugging    
iprib                      debugging           debugging    
ira                        debugging           debugging    
isis                       debugging           debugging    
kernelfib                  debugging           debugging    
lacp                       debugging           debugging    
lag                        debugging           debugging    
launcher                   debugging           debugging    
ldp                        debugging           debugging    
license                    debugging           debugging    
lineproto                  debugging           debugging    
lldp                       debugging           debugging    
loadbalancer               debugging           debugging    
logmgr                     debugging           debugging    
loopback                   debugging           debugging    
loopprotect                debugging           debugging    
mapreducemonitor           debugging           debugging    
mcs                        debugging           debugging    
mirroring                  debugging           debugging    
mka                        debugging           debugging    
mlag                       debugging           debugging    
mldsnooping                debugging           debugging    
mmode                      debugging           debugging    
mroute                     debugging           debugging    
mrp                        debugging           debugging    
msdp                       debugging           debugging    
msrp                       debugging           debugging    
msspolicymonitor           debugging           debugging    
mvrp                       debugging           debugging    
nat                        debugging           debugging    
openconfig                 debugging           debugging    
openflow                   debugging           debugging    
ospf                       debugging           debugging    
ospf3                      debugging           debugging    
package                    debugging           debugging    
pfc                        debugging           debugging    
pimbsr                     debugging           debugging    
portsecurity               debugging           debugging    
postcardtelemetry          debugging           debugging    
pseudowire                 debugging           debugging    
ptp                        debugging           debugging    
pwrmgmt                    debugging           debugging    
qos                        debugging           debugging    
queuemonitor               debugging           debugging    
radius                     debugging           debugging    
redundancy                 debugging           debugging    
rib                        debugging           debugging    
routing                    debugging           debugging    
security                   debugging           debugging    
servermonitor              debugging           debugging    
spantree                   debugging           debugging    
sso                        debugging           debugging    
stagemgr                   debugging           debugging    
sys                        debugging           debugging    
sysdb                      debugging           debugging    
tapagg                     debugging           debugging    
tcp                        debugging           debugging    
trafficpolicy              debugging           debugging    
transceiver                debugging           debugging    
tunnel                     debugging           debugging    
tunnelintf                 debugging           debugging    
vmtracersess               debugging           debugging    
vmwarevi                   debugging           debugging    
vmwarevs                   debugging           debugging    
vrf                        debugging           debugging    
vrrp                       debugging           debugging    
vxlan                      debugging           debugging    
xmpp                       debugging           debugging    
ztp                        debugging           debugging    

Log Buffer:
May  9 16:10:18 PE-2B ConfigAgent: %SYS-5-CONFIG_SESSION_EXITED: User cvpadmin exited configuration session CVP-configtask-cf1931d2-7a01-49d4-a4ee-98bfd1b5c3a3 on TerminAttr (localhost)
May  9 16:10:20 PE-2B ConfigAgent: %SYS-5-CONFIG_SESSION_ENTERED: User cvpadmin entered configuration session CVP-configtask-cf1931d2-7a01-49d4-a4ee-98bfd1b5c3a3 on TerminAttr (localhost)
May  9 16:10:23 PE-2B Ira: %VRF-6-CREATED: VRF TENANT_A_IPVPN has been created with network namespace ns-TENANT_A_IPVPN
May  9 16:10:23 PE-2B Stp: %SPANTREE-6-STABLE_CHANGE: Stp state is now not stable
May  9 16:10:23 PE-2B Stp: %SPANTREE-6-INTERFACE_DEL: Interface Ethernet4 has been removed from instance MST0
May  9 16:10:23 PE-2B Bgp: %BGP-3-NOTIFICATION: received from neighbor 100.70.0.21 (VRF default AS 64512) 6/6 (Cease/other configuration change <Hard Reset>) 0 bytes
May  9 16:10:23 PE-2B Bgp: %BGP-5-ADJCHANGE: peer 100.70.0.21 (VRF default AS 64512) old state Established event RecvHardReset new state Idle
May  9 16:10:24 PE-2B ConfigAgent: %SYS-5-CONFIG_SESSION_COMMIT_TIMER_STARTED: User cvpadmin committed session CVP-configtask-cf1931d2-7a01-49d4-a4ee-98bfd1b5c3a3 on TerminAttr (localhost), with timer 0:4:0(hr:min:sec).
May  9 16:10:24 PE-2B ConfigAgent: %SYS-5-CONFIG_SESSION_EXITED: User cvpadmin exited configuration session CVP-configtask-cf1931d2-7a01-49d4-a4ee-98bfd1b5c3a3 on TerminAttr (localhost)
May  9 16:10:26 PE-2B IpRib: %IPRIB-5-RIBREADY_IGP: IGP protocols in VRF TENANT_A_IPVPN have converged
May  9 16:10:26 PE-2B IpRib: %IPRIB-5-RIBREADY_PROTO: All protocols in VRF TENANT_A_IPVPN have converged
May  9 16:10:26 PE-2B IpRib: %IPRIB-5-RIBREADY_FIB: All routes in VRF TENANT_A_IPVPN are available in FIB
May  9 16:10:28 PE-2B Pseudowire: %PW-6-PATCH_REMOVED: Pseudowire patch TEN_A_site3_site5_eline_vlan_based has been removed
May  9 16:10:29 PE-2B Bgp: %BGP-5-ADJCHANGE: peer 100.70.0.21 (VRF default AS 64512) old state OpenConfirm event Established new state Established
May  9 16:10:33 PE-2B Pseudowire: %PW-6-LOCAL_REMOTE_PATCH_ADDED: Pseudowire patch TEN_A_site3_site5_eline_vlan_based has been added with neighbor(s) 100.70.0.12
May  9 16:10:35 PE-2B Pseudowire: %PW-6-LOCAL_REMOTE_PATCH_PEER_ADDED: Pseudowire patch TEN_A_site3_site5_eline_vlan_based neighbor(s) 100.70.0.11 added
May  9 16:10:39 PE-2B ConfigAgent: %SYS-5-CONFIG_SESSION_COMMIT_SUCCESS: User cvpadmin committed configuration session CVP-configtask-cf1931d2-7a01-49d4-a4ee-98bfd1b5c3a3 successfully on TerminAttr (localhost)
May  9 16:10:41 PE-2B ConfigAgent: %SYS-5-CONFIG_STARTUP: Startup config saved from system:/running-config by cvpadmin on TerminAttr (localhost).
May  9 16:10:53 PE-2B Stp: %SPANTREE-6-STABLE_CHANGE: Stp state is now stable
May 10 09:09:12 PE-2B ConfigAgent: %SYS-5-CONFIG_SESSION_ENTERED: User cvpsystem entered configuration session capiVerify-2270-dbb17eead04011ec8d0f5000006b2e70 on TerminAttr (localhost)
May 10 09:09:16 PE-2B ConfigAgent: %SYS-5-CONFIG_SESSION_EXITED: User cvpsystem exited configuration session capiVerify-2270-dbb17eead04011ec8d0f5000006b2e70 on TerminAttr (localhost)
May 10 09:09:16 PE-2B ConfigAgent: %SYS-5-CONFIG_SESSION_ABORTED: User cvpsystem aborted configuration session capiVerify-2270-dbb17eead04011ec8d0f5000006b2e70 on TerminAttr (localhost)
May 10 09:09:16 PE-2B ConfigAgent: %SYS-5-CONFIG_SESSION_ENTERED: User cvpsystem entered configuration session capiVerify-2270-de3b80ded04011ec92675000006b2e70 on TerminAttr (localhost)
May 10 09:09:21 PE-2B ConfigAgent: %SYS-5-CONFIG_SESSION_EXITED: User cvpsystem exited configuration session capiVerify-2270-de3b80ded04011ec92675000006b2e70 on TerminAttr (localhost)
May 10 09:09:21 PE-2B ConfigAgent: %SYS-5-CONFIG_SESSION_ABORTED: User cvpsystem aborted configuration session capiVerify-2270-de3b80ded04011ec92675000006b2e70 on TerminAttr (localhost)
May 10 09:10:10 PE-2B ConfigAgent: %SYS-5-CONFIG_SESSION_ENTERED: User cvpadmin entered configuration session CVP-configtask-2a07a03a-f6db-4064-b372-f2f428faf258 on TerminAttr (localhost)
May 10 09:10:18 PE-2B ConfigAgent: %SYS-5-CONFIG_SESSION_EXITED: User cvpadmin exited configuration session CVP-configtask-2a07a03a-f6db-4064-b372-f2f428faf258 on TerminAttr (localhost)
May 10 09:10:21 PE-2B ConfigAgent: %SYS-5-CONFIG_SESSION_ENTERED: User cvpadmin entered configuration session CVP-configtask-2a07a03a-f6db-4064-b372-f2f428faf258 on TerminAttr (localhost)
May 10 09:10:25 PE-2B ConfigAgent: %SYS-5-CONFIG_SESSION_COMMIT_TIMER_STARTED: User cvpadmin committed session CVP-configtask-2a07a03a-f6db-4064-b372-f2f428faf258 on TerminAttr (localhost), with timer 0:4:0(hr:min:sec).
May 10 09:10:25 PE-2B ConfigAgent: %SYS-5-CONFIG_SESSION_EXITED: User cvpadmin exited configuration session CVP-configtask-2a07a03a-f6db-4064-b372-f2f428faf258 on TerminAttr (localhost)
May 10 09:10:39 PE-2B ConfigAgent: %SYS-5-CONFIG_SESSION_COMMIT_SUCCESS: User cvpadmin committed configuration session CVP-configtask-2a07a03a-f6db-4064-b372-f2f428faf258 successfully on TerminAttr (localhost)
May 10 09:10:42 PE-2B ConfigAgent: %SYS-5-CONFIG_STARTUP: Startup config saved from system:/running-config by cvpadmin on TerminAttr (localhost).
```
## show ntp associations

```
NTP is disabled.
     remote          refid      st t when  poll reach   delay   offset  jitter
==============================================================================
```
## show ntp status

```
NTP is disabled.
```
## show running-config

```
! Command: show running-config
! device: PE-2B (vEOS-lab, EOS-4.27.3F)
!
! boot system flash:/vEOS-lab-4.27.3F.swi
!
no aaa root
!
username cvpadmin privilege 15 role network-admin secret sha512 $6$WRH0YV9I461XA.qn$BYsYGThSIHOh4ic8qdjnHWq9Zi/l0W8Ws4DZ5Y5yI3hBBWGP03W3ggXWdY7MTqVA8plRvaazG/U8CeMPkT5aE.
username emil privilege 15 role network-admin secret sha512 $6$kiCAKn8fb8T12ClP$UchWUxo0y/CpYptWYxj7pC8uzjoUJnvi4lSg1c009mqJG2inlUDQdTi/YVY4M0dzgf4LOkaVtL7U11ZRkP7Rm/
!
alias cpuinfo bash cat /proc/cpuinfo
alias meminfo bash cat /proc/meminfo
!
daemon TerminAttr
   exec /usr/bin/TerminAttr -cvaddr=10.20.20.20:9910 -cvauth=key,dudeface -cvvrf=MGMT -smashexcludes=ale,flexCounter,hardware,kni,pulse,strata -ingestexclude=/Sysdb/cell/1/agent,/Sysdb/cell/2/agent -taillogs
   no shutdown
!
vlan internal order ascending range 1006 1199
!
transceiver qsfp default-mode 4x10G
!
service routing protocols model multi-agent
!
hostname PE-2B
ip name-server vrf MGMT 8.8.8.8
ip name-server vrf MGMT 10.20.20.13
!
spanning-tree mode mstp
spanning-tree root super
spanning-tree mst 0 priority 4096
!
vlan 10
   name TENANT_A_L2_P2MP_SERVICE
!
vlan 1002
   name TENANT_A_SITE2_IRB
!
vrf instance MGMT
!
vrf instance TENANT_A_IPVPN
!
vrf instance TENANT_A_L3VPN
!
management api http-commands
   no shutdown
   !
   vrf MGMT
      no shutdown
!
management security
   password encryption-key common
!
interface Port-Channel1
   no switchport
   !
   evpn ethernet-segment
      identifier 0000:0000:0000:2222:1111
      route-target import 00:00:22:22:11:11
   lacp system-id 0000.2222.1111
!
interface Port-Channel3
   description A_CPE2_SITE2_PO2_EVPN-A-A-PortChannel
   switchport trunk allowed vlan 10,1002
   switchport mode trunk
   !
   evpn ethernet-segment
      identifier 0000:0000:0000:2222:3333
      route-target import 00:00:22:22:33:33
   lacp system-id 0000.2222.3333
   spanning-tree portfast
!
interface Ethernet1
   channel-group 1 mode active
!
interface Ethernet2
   description P2P_LINK_TO_P4_Ethernet2
   no switchport
   ip address 100.64.48.15/31
   isis enable CORE
   isis circuit-type level-2
   isis metric 50
   no isis hello padding
   isis network point-to-point
   isis authentication mode md5
   isis authentication key 7 $1c$sTNAlR6rKSw=
!
interface Ethernet3
   description A_CPE2_SITE2_PO2_Ethernet4
   channel-group 3 mode active
!
interface Ethernet4
   description ROUTED_PORTS_CPE2
   no switchport
   vrf TENANT_A_IPVPN
   ip address 30.30.30.7/31
!
interface Ethernet5
!
interface Ethernet6
!
interface Ethernet7
!
interface Ethernet8
!
interface Loopback0
   description MPLS_Overlay_peering
   ip address 100.70.0.14/32
   node-segment ipv4 index 104
   isis enable CORE
   isis passive
!
interface Management1
   description oob_management
   vrf MGMT
   ip address 10.30.30.109/24
!
interface Vlan1002
   description TENANT_A_SITE2_IRB
   vrf TENANT_A_L3VPN
   ip address 10.1.20.3/27
   ip ospf area 0.0.0.0
!
ip virtual-router mac-address 00:1c:73:00:dc:00
!
ip routing
no ip routing vrf MGMT
ip routing vrf TENANT_A_IPVPN
ip routing vrf TENANT_A_L3VPN
!
ip route vrf MGMT 0.0.0.0/0 10.30.30.1
!
mpls ip
!
patch panel
   patch TEN_A_site3_site5_eline_vlan_based
      connector 1 interface Port-Channel1
      connector 2 pseudowire bgp vpws TENANT_A pseudowire TEN_A_site3_site5_eline_vlan_based
!
router bfd
   multihop interval 5000 min-rx 5000 multiplier 3
!
router bgp 64512
   router-id 100.70.0.14
   no bgp default ipv4-unicast
   distance bgp 20 200 200
   graceful-restart restart-time 300
   graceful-restart
   maximum-paths 4 ecmp 4
   neighbor MPLS-OVERLAY-PEERS peer group
   neighbor MPLS-OVERLAY-PEERS remote-as 64512
   neighbor MPLS-OVERLAY-PEERS update-source Loopback0
   neighbor MPLS-OVERLAY-PEERS bfd
   neighbor MPLS-OVERLAY-PEERS password 7 $1c$U4tL2vQP9QwZlxIV1K3/pw==
   neighbor MPLS-OVERLAY-PEERS send-community
   neighbor MPLS-OVERLAY-PEERS maximum-routes 0
   neighbor 100.70.0.21 peer group MPLS-OVERLAY-PEERS
   neighbor 100.70.0.21 description RR
   !
   vlan 10
      rd 100.70.0.14:10010
      route-target both 64512:10010
      redistribute learned
   !
   vlan 1002
      rd 100.70.0.14:11002
      route-target both 64512:11002
      redistribute learned
   !
   vpws TENANT_A
      rd 100.70.0.14:1000
      route-target import export evpn 64512:1000
      !
      pseudowire TEN_A_site3_site5_eline_vlan_based
         evpn vpws id local 21000 remote 11000
   !
   address-family evpn
      neighbor default encapsulation mpls next-hop-self source-interface Loopback0
      neighbor MPLS-OVERLAY-PEERS activate
   !
   address-family ipv4
      no neighbor MPLS-OVERLAY-PEERS activate
   !
   address-family vpn-ipv4
      neighbor MPLS-OVERLAY-PEERS activate
      neighbor default encapsulation mpls next-hop-self source-interface Loopback0
   !
   vrf TENANT_A_IPVPN
      rd 100.70.0.14:2
      route-target import vpn-ipv4 64512:2
      route-target export vpn-ipv4 64512:2
      router-id 100.70.0.14
      redistribute connected
   !
   vrf TENANT_A_L3VPN
      rd 100.70.0.14:1
      route-target import evpn 64512:1
      route-target export evpn 64512:1
      router-id 100.70.0.14
      redistribute connected
      redistribute ospf
!
router isis CORE
   net 49.0001.0000.0001.0004.00
   router-id ipv4 100.70.0.14
   is-type level-2
   log-adjacency-changes
   timers local-convergence-delay 15000 protected-prefixes
   advertise passive-only
   !
   address-family ipv4 unicast
      maximum-paths 4
      fast-reroute ti-lfa mode link-protection
   !
   segment-routing mpls
      no shutdown
!
router ospf 1 vrf TENANT_A_L3VPN
   router-id 100.70.0.14
   passive-interface default
   no passive-interface Vlan1002
   redistribute bgp
   max-lsa 12000
!
end
```
## show system environment all

```
System temperature status is: Unknown
Action on overheat: shutdown
Recovery mode when power-cycle upon overheat: not applicable
Restrict recovery when ambient temperature is at or above: not applicable

System cooling status is: Unknown
Ambient temperature: Unknown
Number of cooling zones is: 1
           Config Actual        Speed     Stable
Fan Status  Speed  Speed Uptime Stability Uptime
--- ------ ------ ------ ------ --------- ------

% There seem to be no power supplies connected.
```
## show version

```
Arista vEOS-lab
Hardware version: 
Serial number: 33F5ACC51468B017F66BCBB8BBD454F4
Hardware MAC address: 5000.006b.2e70
System MAC address: 5000.006b.2e70

Software image version: 4.27.3F
Architecture: i686
Internal build version: 4.27.3F-26379303.4273F
Internal build ID: 13f8bd28-52d0-40ec-ab80-b12a056d63d4
Image format version: 1.0
Image optimization: None

Uptime: 3 weeks, 6 days, 19 hours and 40 minutes
Total memory: 2004568 kB
Free memory: 791124 kB
```
## show vrf

```
Maximum number of VRFs allowed: 1024
   VRF                  Protocols       State         Interfaces
-------------------- --------------- ---------------- ----------
   MGMT                 IPv4            no routing    Ma1       
   MGMT                 IPv6            no routing              
   TENANT_A_IPVPN       IPv4            routing       Et4       
   TENANT_A_IPVPN       IPv6            no routing              
   TENANT_A_L3VPN       IPv4            routing       Vl1002    
   TENANT_A_L3VPN       IPv6            no routing              
   default              IPv4            routing       Et2, Lo0  
   default              IPv6            no routing
```
