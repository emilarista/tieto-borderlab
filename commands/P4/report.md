# P4 Commands Output

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
bogomips	: 2375.68
clflush size	: 64
cache_alignment	: 64
address sizes	: 40 bits physical, 48 bits virtual
power management:
```
## bash cat /proc/meminfo

```
MemTotal:        2004568 kB
MemFree:           58788 kB
MemAvailable:     920960 kB
Buffers:          177952 kB
Cached:           882228 kB
SwapCached:            0 kB
Active:          1140540 kB
Inactive:         647464 kB
Active(anon):     797716 kB
Inactive(anon):   120444 kB
Active(file):     342824 kB
Inactive(file):   527020 kB
Unevictable:           0 kB
Mlocked:               0 kB
SwapTotal:             0 kB
SwapFree:              0 kB
Dirty:                 0 kB
Writeback:             0 kB
AnonPages:        727824 kB
Mapped:           519872 kB
Shmem:            190336 kB
Slab:             119680 kB
SReclaimable:      65488 kB
SUnreclaim:        54192 kB
KernelStack:        2876 kB
PageTables:        13020 kB
NFS_Unstable:          0 kB
Bounce:                0 kB
WritebackTmp:          0 kB
CommitLimit:     1002284 kB
Committed_AS:    1201208 kB
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
DirectMap4k:       77696 kB
DirectMap2M:     2019328 kB
```
## dir all-filesystems

```
Directory of file:/

       dr-x          80           Apr 12 14:17  bin
       dr-x         234           Feb 28 13:40  boot
       drwx        2940           Apr 12 14:16  dev
       drwx        1180           May 10 09:10  etc
       drwx          60           Apr 12 14:16  export
       drwx          80           May 10 08:49  home
       dr-x          60           Feb 28 13:41  lib
       drwx        1178           Feb 28 13:41  lib64
       drwx           3           Apr 11  2018  media
       drwx          80           Apr 12 14:16  mnt
       drwx           0           Apr 12 14:14  monitor
       drwx          29           Feb 28 13:41  opt
       drwx         100           Apr 12 14:16  persist
       dr-x           0           Apr 12 14:14  proc
       dr-x          60           Apr 12 14:26  root
       dr-x         311           Feb 28 13:41  rootfs-i386
       drwx        1340           Apr 12 14:30  run
       dr-x          80           Apr 12 14:16  sbin
       drwx           3           Apr 11  2018  srv
       dr-x           0           Apr 12 14:16  sys
       drwx         220           May 10 09:44  tmp
       drwx         120           Feb 28 13:40  usr
       drwx         100           Apr 12 14:16  var

307904512 bytes total (227192832 bytes free)

Directory of flash:/

       -rw-        1386           Apr 12 14:16  AsuFastPktTransmit.log
       drwx        4096           Apr 12 14:25  Fossil
       -rw-         852           Apr 12 14:16  SsuRestore.log
       -rw-         852           Apr 12 14:16  SsuRestoreLegacy.log
       -rw-     7209797           Apr 12 14:10  TerminAttr-1.19.2-1.swix
       -rw-          32           Apr 12 14:09  boot-config
       -rw-          25           Apr 12 14:10  boot-extensions
       drwx        4096           Apr 12 14:22  debug
       drwx        4096            Apr 8 13:46  fastpkttx.backup
       drwx       16384            Mar 2 12:51  lost+found
       drwx        4096           May 10 09:48  persist
       drwx        4096            Apr 8 13:50  schedule
       -rw-        2963           May 10 09:10  startup-config
       -rw-   495254600           Apr 12 14:08  vEOS-lab-4.27.3F.swi
       -rw-   487567618            Mar 2 12:51  vEOS-lab.swi
       -rw-           0           Apr 12 09:54  zerotouch-config

4093313024 bytes total (2555158528 bytes free)

Directory of system:/

       -rw-        2892              <no date>  running-config

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
Tue May 10 09:48:05 2022
Timezone: UTC
Clock source: local
```
## show interfaces

```
Ethernet1 is up, line protocol is up (connected)
  Hardware is Ethernet, address is 5000.00f6.ad37
  Description: P2P_LINK_TO_P3_Ethernet1
  Internet address is 100.64.48.11/31
  Broadcast address is 255.255.255.255
  IP MTU 1500 bytes (default), BW 10000000 kbit
  Full-duplex, 10Gb/s, auto negotiation: off, uni-link: n/a
  Up 27 days, 19 hours, 22 minutes, 54 seconds
  Loopback Mode : None
  2 link status changes since last clear
  Last clearing of "show interface" counters never
  5 minutes input rate 0 bps (0.0% with framing overhead), 0 packets/sec
  5 minutes output rate 0 bps (0.0% with framing overhead), 0 packets/sec
     1351540 packets input, 154880873 bytes
     Received 1 broadcasts, 660142 multicast
     0 runts, 0 giants
     0 input errors, 0 CRC, 0 alignment, 0 symbol, 0 input discards
     0 PAUSE input
     1312482 packets output, 148368859 bytes
     Sent 0 broadcasts, 660001 multicast
     0 output errors, 0 collisions
     0 late collision, 0 deferred, 0 output discards
     0 PAUSE output
Ethernet2 is up, line protocol is up (connected)
  Hardware is Ethernet, address is 5000.00f6.ad37
  Description: P2P_LINK_TO_PE-2B_Ethernet2
  Internet address is 100.64.48.14/31
  Broadcast address is 255.255.255.255
  IP MTU 1500 bytes (default), BW 10000000 kbit
  Full-duplex, 10Gb/s, auto negotiation: off, uni-link: n/a
  Up 27 days, 19 hours, 22 minutes, 55 seconds
  Loopback Mode : None
  2 link status changes since last clear
  Last clearing of "show interface" counters never
  5 minutes input rate 0 bps (0.0% with framing overhead), 0 packets/sec
  5 minutes output rate 0 bps (0.0% with framing overhead), 0 packets/sec
     1310030 packets input, 147092577 bytes
     Received 2 broadcasts, 655970 multicast
     0 runts, 0 giants
     0 input errors, 0 CRC, 0 alignment, 0 symbol, 0 input discards
     0 PAUSE input
     1340400 packets output, 154672504 bytes
     Sent 1 broadcasts, 656580 multicast
     0 output errors, 0 collisions
     0 late collision, 0 deferred, 0 output discards
     0 PAUSE output
Ethernet3 is up, line protocol is up (connected)
  Hardware is Ethernet, address is 5000.00f6.ad37
  Description: P2P_LINK_TO_P2_Ethernet3
  Internet address is 100.64.48.9/31
  Broadcast address is 255.255.255.255
  IP MTU 1500 bytes (default), BW 10000000 kbit
  Full-duplex, 10Gb/s, auto negotiation: off, uni-link: n/a
  Up 27 days, 19 hours, 22 minutes, 54 seconds
  Loopback Mode : None
  2 link status changes since last clear
  Last clearing of "show interface" counters never
  5 minutes input rate 0 bps (0.0% with framing overhead), 0 packets/sec
  5 minutes output rate 0 bps (0.0% with framing overhead), 0 packets/sec
     694017 packets input, 105150271 bytes
     Received 0 broadcasts, 660155 multicast
     0 runts, 0 giants
     0 input errors, 0 CRC, 0 alignment, 0 symbol, 0 input discards
     0 PAUSE input
     703162 packets output, 106229100 bytes
     Sent 3 broadcasts, 660143 multicast
     0 output errors, 0 collisions
     0 late collision, 0 deferred, 0 output discards
     0 PAUSE output
Ethernet4 is up, line protocol is up (connected)
  Hardware is Ethernet, address is 5000.0007.0004 (bia 5000.0007.0004)
  Ethernet MTU 9214 bytes, BW 10000000 kbit
  Full-duplex, 10Gb/s, auto negotiation: off, uni-link: n/a
  Up 27 days, 19 hours, 22 minutes, 52 seconds
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
     80065 packets output, 13050591 bytes
     Sent 0 broadcasts, 80065 multicast
     0 output errors, 0 collisions
     0 late collision, 0 deferred, 0 output discards
     0 PAUSE output
Ethernet5 is up, line protocol is up (connected)
  Hardware is Ethernet, address is 5000.0007.0005 (bia 5000.0007.0005)
  Ethernet MTU 9214 bytes, BW 10000000 kbit
  Full-duplex, 10Gb/s, auto negotiation: off, uni-link: n/a
  Up 27 days, 19 hours, 22 minutes, 52 seconds
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
     80065 packets output, 13050591 bytes
     Sent 0 broadcasts, 80065 multicast
     0 output errors, 0 collisions
     0 late collision, 0 deferred, 0 output discards
     0 PAUSE output
Ethernet6 is up, line protocol is up (connected)
  Hardware is Ethernet, address is 5000.0007.0006 (bia 5000.0007.0006)
  Ethernet MTU 9214 bytes, BW 10000000 kbit
  Full-duplex, 10Gb/s, auto negotiation: off, uni-link: n/a
  Up 27 days, 19 hours, 22 minutes, 53 seconds
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
     80065 packets output, 13050591 bytes
     Sent 0 broadcasts, 80065 multicast
     0 output errors, 0 collisions
     0 late collision, 0 deferred, 0 output discards
     0 PAUSE output
Ethernet7 is up, line protocol is up (connected)
  Hardware is Ethernet, address is 5000.0007.0007 (bia 5000.0007.0007)
  Ethernet MTU 9214 bytes, BW 10000000 kbit
  Full-duplex, 10Gb/s, auto negotiation: off, uni-link: n/a
  Up 27 days, 19 hours, 22 minutes, 53 seconds
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
     80065 packets output, 13050591 bytes
     Sent 0 broadcasts, 80065 multicast
     0 output errors, 0 collisions
     0 late collision, 0 deferred, 0 output discards
     0 PAUSE output
Ethernet8 is up, line protocol is up (connected)
  Hardware is Ethernet, address is 5000.0007.0008 (bia 5000.0007.0008)
  Ethernet MTU 9214 bytes, BW 10000000 kbit
  Full-duplex, 10Gb/s, auto negotiation: off, uni-link: n/a
  Up 27 days, 19 hours, 22 minutes, 55 seconds
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
     80065 packets output, 13050591 bytes
     Sent 0 broadcasts, 80065 multicast
     0 output errors, 0 collisions
     0 late collision, 0 deferred, 0 output discards
     0 PAUSE output
Loopback0 is up, line protocol is up (connected)
  Hardware is Loopback
  Description: LSR_Router_ID
  Internet address is 100.70.0.34/32
  Broadcast address is 255.255.255.255
  IP MTU 65535 bytes (default)
  Up 27 days, 19 hours, 25 minutes, 39 seconds
Management1 is up, line protocol is up (connected)
  Hardware is Ethernet, address is 5000.0007.0000 (bia 5000.0007.0000)
  Description: oob_management
  Internet address is 10.30.30.107/24
  Broadcast address is 255.255.255.255
  IP MTU 1500 bytes (default), BW 1000000 kbit
  Full-duplex, 1Gb/s, auto negotiation: on, uni-link: n/a
  Up 27 days, 19 hours, 25 minutes, 31 seconds
  Loopback Mode : None
  6 link status changes since last clear
  Last clearing of "show interface" counters never
  5 minutes input rate 5.80 kbps (0.0% with framing overhead), 8 packets/sec
  5 minutes output rate 22.9 kbps (0.0% with framing overhead), 9 packets/sec
     14888810 packets input, 1239350213 bytes
     Received 842 broadcasts, 3188567 multicast
     0 runts, 0 giants
     0 input errors, 0 CRC, 0 alignment, 0 symbol, 0 input discards
     0 PAUSE input
     12520242 packets output, 2441307151 bytes
     Sent 5 broadcasts, 80076 multicast
     0 output errors, 0 collisions
     0 late collision, 0 deferred, 0 output discards
     0 PAUSE output
```
## show inventory

```
System information
  Model                    Description                                         
  ------------------------ ----------------------------------------------------
  vEOS-lab                 vEOS for lab use                                    

  HW Version  Serial Number                    Mfg Date   Epoch
  ----------- -------------------------------- ---------- -----
              98CD3DDD825E869AED91E3AB1A661DC1                 

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
Interface         IP Address            Status       Protocol            MTU    Owner  
----------------- --------------------- ------------ -------------- ----------- -------
Ethernet1         100.64.48.11/31       up           up                 1500           
Ethernet2         100.64.48.14/31       up           up                 1500           
Ethernet3         100.64.48.9/31        up           up                 1500           
Loopback0         100.70.0.34/32        up           up                65535           
Management1       10.30.30.107/24       up           up                 1500
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

 C        100.64.48.8/31 is directly connected, Ethernet3
 C        100.64.48.10/31 is directly connected, Ethernet1
 C        100.64.48.14/31 is directly connected, Ethernet2
 I L2     100.70.0.11/32 [115/160] via 100.64.48.10, Ethernet1
                                   via 100.64.48.8, Ethernet3
 I L2     100.70.0.12/32 [115/110] via 100.64.48.8, Ethernet3
 I L2     100.70.0.13/32 [115/110] via 100.64.48.10, Ethernet1
 I L2     100.70.0.14/32 [115/60] via 100.64.48.15, Ethernet2
 I L2     100.70.0.21/32 [115/110] via 100.64.48.10, Ethernet1
 I L2     100.70.0.31/32 [115/110] via 100.64.48.10, Ethernet1
                                   via 100.64.48.8, Ethernet3
 I L2     100.70.0.32/32 [115/60] via 100.64.48.8, Ethernet3
 I L2     100.70.0.33/32 [115/60] via 100.64.48.10, Ethernet1
 C        100.70.0.34/32 is directly connected, Loopback0


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
Apr 13 11:00:50 P4 ConfigAgent: %SYS-5-CONFIG_SESSION_ENTERED: User cvpsystem entered configuration session capiVerify-2280-fa7ae2f4bb1811ecbfa0020000000000 on TerminAttr (localhost)
Apr 13 11:00:54 P4 ConfigAgent: %SYS-5-CONFIG_SESSION_EXITED: User cvpsystem exited configuration session capiVerify-2280-fa7ae2f4bb1811ecbfa0020000000000 on TerminAttr (localhost)
Apr 13 11:00:54 P4 ConfigAgent: %SYS-5-CONFIG_SESSION_ABORTED: User cvpsystem aborted configuration session capiVerify-2280-fa7ae2f4bb1811ecbfa0020000000000 on TerminAttr (localhost)
Apr 13 11:04:29 P4 ConfigAgent: %SYS-5-CONFIG_SESSION_ENTERED: User cvpsystem entered configuration session capiVerify-2280-7d7f26e2bb1911eca79f020000000000 on TerminAttr (localhost)
Apr 13 11:04:34 P4 ConfigAgent: %SYS-5-CONFIG_SESSION_EXITED: User cvpsystem exited configuration session capiVerify-2280-7d7f26e2bb1911eca79f020000000000 on TerminAttr (localhost)
Apr 13 11:04:34 P4 ConfigAgent: %SYS-5-CONFIG_SESSION_ABORTED: User cvpsystem aborted configuration session capiVerify-2280-7d7f26e2bb1911eca79f020000000000 on TerminAttr (localhost)
Apr 13 11:22:47 P4 ConfigAgent: %SYS-5-CONFIG_SESSION_ENTERED: User cvpadmin entered configuration session CVP-configtask-73aabda5-b824-412c-9e09-83cc406ece22 on TerminAttr (localhost)
Apr 13 11:22:52 P4 ConfigAgent: %SYS-5-CONFIG_SESSION_EXITED: User cvpadmin exited configuration session CVP-configtask-73aabda5-b824-412c-9e09-83cc406ece22 on TerminAttr (localhost)
Apr 13 11:22:53 P4 ConfigAgent: %SYS-5-CONFIG_SESSION_ENTERED: User cvpadmin entered configuration session CVP-configtask-73aabda5-b824-412c-9e09-83cc406ece22 on TerminAttr (localhost)
Apr 13 11:22:58 P4 ConfigAgent: %SYS-5-CONFIG_SESSION_COMMIT_TIMER_STARTED: User cvpadmin committed session CVP-configtask-73aabda5-b824-412c-9e09-83cc406ece22 on TerminAttr (localhost), with timer 0:4:0(hr:min:sec).
Apr 13 11:22:58 P4 ConfigAgent: %SYS-5-CONFIG_SESSION_EXITED: User cvpadmin exited configuration session CVP-configtask-73aabda5-b824-412c-9e09-83cc406ece22 on TerminAttr (localhost)
Apr 13 11:23:10 P4 ConfigAgent: %SYS-5-CONFIG_SESSION_COMMIT_SUCCESS: User cvpadmin committed configuration session CVP-configtask-73aabda5-b824-412c-9e09-83cc406ece22 successfully on TerminAttr (localhost)
Apr 13 11:23:13 P4 ConfigAgent: %SYS-5-CONFIG_STARTUP: Startup config saved from system:/running-config by cvpadmin on TerminAttr (localhost).
Apr 21 14:19:22 P4 ConfigAgent: %SYS-5-CONFIG_SESSION_ENTERED: User cvpsystem entered configuration session capiVerify-2280-09e12e4ac17e11ec88fe020000000000 on TerminAttr (localhost)
Apr 21 14:19:26 P4 ConfigAgent: %SYS-5-CONFIG_SESSION_EXITED: User cvpsystem exited configuration session capiVerify-2280-09e12e4ac17e11ec88fe020000000000 on TerminAttr (localhost)
Apr 21 14:19:26 P4 ConfigAgent: %SYS-5-CONFIG_SESSION_ABORTED: User cvpsystem aborted configuration session capiVerify-2280-09e12e4ac17e11ec88fe020000000000 on TerminAttr (localhost)
Apr 25 13:10:40 P4 ConfigAgent: %SYS-5-CONFIG_SESSION_ENTERED: User cvpsystem entered configuration session capiVerify-2280-1a9464e6c49911ecb5c5020000000000 on TerminAttr (localhost)
Apr 25 13:10:43 P4 ConfigAgent: %SYS-5-CONFIG_SESSION_EXITED: User cvpsystem exited configuration session capiVerify-2280-1a9464e6c49911ecb5c5020000000000 on TerminAttr (localhost)
Apr 25 13:10:43 P4 ConfigAgent: %SYS-5-CONFIG_SESSION_ABORTED: User cvpsystem aborted configuration session capiVerify-2280-1a9464e6c49911ecb5c5020000000000 on TerminAttr (localhost)
Apr 26 10:28:19 P4 ConfigAgent: %SYS-5-CONFIG_SESSION_ENTERED: User cvpsystem entered configuration session capiVerify-2280-972e8600c54b11ecbe8c020000000000 on TerminAttr (localhost)
Apr 26 10:28:25 P4 ConfigAgent: %SYS-5-CONFIG_SESSION_EXITED: User cvpsystem exited configuration session capiVerify-2280-972e8600c54b11ecbe8c020000000000 on TerminAttr (localhost)
Apr 26 10:28:25 P4 ConfigAgent: %SYS-5-CONFIG_SESSION_ABORTED: User cvpsystem aborted configuration session capiVerify-2280-972e8600c54b11ecbe8c020000000000 on TerminAttr (localhost)
May 10 09:09:13 P4 ConfigAgent: %SYS-5-CONFIG_SESSION_ENTERED: User cvpsystem entered configuration session capiVerify-2280-dc3c5628d04011ec97d9020000000000 on TerminAttr (localhost)
May 10 09:09:17 P4 ConfigAgent: %SYS-5-CONFIG_SESSION_EXITED: User cvpsystem exited configuration session capiVerify-2280-dc3c5628d04011ec97d9020000000000 on TerminAttr (localhost)
May 10 09:09:17 P4 ConfigAgent: %SYS-5-CONFIG_SESSION_ABORTED: User cvpsystem aborted configuration session capiVerify-2280-dc3c5628d04011ec97d9020000000000 on TerminAttr (localhost)
May 10 09:10:04 P4 ConfigAgent: %SYS-5-CONFIG_SESSION_ENTERED: User cvpadmin entered configuration session CVP-configtask-7c4e3e58-1262-4e50-8de7-90403bfc2456 on TerminAttr (localhost)
May 10 09:10:10 P4 ConfigAgent: %SYS-5-CONFIG_SESSION_EXITED: User cvpadmin exited configuration session CVP-configtask-7c4e3e58-1262-4e50-8de7-90403bfc2456 on TerminAttr (localhost)
May 10 09:10:12 P4 ConfigAgent: %SYS-5-CONFIG_SESSION_ENTERED: User cvpadmin entered configuration session CVP-configtask-7c4e3e58-1262-4e50-8de7-90403bfc2456 on TerminAttr (localhost)
May 10 09:10:15 P4 ConfigAgent: %SYS-5-CONFIG_SESSION_COMMIT_TIMER_STARTED: User cvpadmin committed session CVP-configtask-7c4e3e58-1262-4e50-8de7-90403bfc2456 on TerminAttr (localhost), with timer 0:4:0(hr:min:sec).
May 10 09:10:15 P4 ConfigAgent: %SYS-5-CONFIG_SESSION_EXITED: User cvpadmin exited configuration session CVP-configtask-7c4e3e58-1262-4e50-8de7-90403bfc2456 on TerminAttr (localhost)
May 10 09:10:29 P4 ConfigAgent: %SYS-5-CONFIG_SESSION_COMMIT_SUCCESS: User cvpadmin committed configuration session CVP-configtask-7c4e3e58-1262-4e50-8de7-90403bfc2456 successfully on TerminAttr (localhost)
May 10 09:10:32 P4 ConfigAgent: %SYS-5-CONFIG_STARTUP: Startup config saved from system:/running-config by cvpadmin on TerminAttr (localhost).
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
! device: P4 (vEOS-lab, EOS-4.27.3F)
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
hostname P4
ip name-server vrf MGMT 8.8.8.8
ip name-server vrf MGMT 10.20.20.13
!
spanning-tree mode none
!
vrf instance MGMT
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
interface Ethernet1
   description P2P_LINK_TO_P3_Ethernet1
   no switchport
   ip address 100.64.48.11/31
   isis enable CORE
   isis circuit-type level-2
   isis metric 50
   no isis hello padding
   isis network point-to-point
   isis authentication mode md5
   isis authentication key 7 $1c$sTNAlR6rKSw=
!
interface Ethernet2
   description P2P_LINK_TO_PE-2B_Ethernet2
   no switchport
   ip address 100.64.48.14/31
   isis enable CORE
   isis circuit-type level-2
   isis metric 50
   no isis hello padding
   isis network point-to-point
   isis authentication mode md5
   isis authentication key 7 $1c$sTNAlR6rKSw=
!
interface Ethernet3
   description P2P_LINK_TO_P2_Ethernet3
   no switchport
   ip address 100.64.48.9/31
   isis enable CORE
   isis circuit-type level-2
   isis metric 50
   no isis hello padding
   isis network point-to-point
   isis authentication mode md5
   isis authentication key 7 $1c$sTNAlR6rKSw=
!
interface Ethernet4
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
   description LSR_Router_ID
   ip address 100.70.0.34/32
   node-segment ipv4 index 304
   isis enable CORE
   isis passive
!
interface Management1
   description oob_management
   vrf MGMT
   ip address 10.30.30.107/24
!
ip routing
no ip routing vrf MGMT
!
ip route vrf MGMT 0.0.0.0/0 10.30.30.1
!
mpls ip
!
router isis CORE
   net 49.0001.0000.0003.0004.00
   router-id ipv4 100.70.0.34
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
Serial number: 98CD3DDD825E869AED91E3AB1A661DC1
Hardware MAC address: 5000.00f6.ad37
System MAC address: 5000.00f6.ad37

Software image version: 4.27.3F
Architecture: i686
Internal build version: 4.27.3F-26379303.4273F
Internal build ID: 13f8bd28-52d0-40ec-ab80-b12a056d63d4
Image format version: 1.0
Image optimization: None

Uptime: 3 weeks, 6 days, 19 hours and 33 minutes
Total memory: 2004568 kB
Free memory: 920988 kB
```
## show vrf

```
Maximum number of VRFs allowed: 1024
   VRF           Protocols       State         Interfaces        
------------- --------------- ---------------- ------------------
   MGMT          IPv4            no routing    Ma1               
   MGMT          IPv6            no routing                      
   default       IPv4            routing       Et1, Et2, Et3, Lo0
   default       IPv6            no routing
```
