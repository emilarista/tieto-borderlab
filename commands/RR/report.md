# RR Commands Output

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
bogomips	: 2289.66
clflush size	: 64
cache_alignment	: 64
address sizes	: 40 bits physical, 48 bits virtual
power management:
```
## bash cat /proc/meminfo

```
MemTotal:        2004568 kB
MemFree:           49484 kB
MemAvailable:     916076 kB
Buffers:          199080 kB
Cached:           860624 kB
SwapCached:            0 kB
Active:          1142540 kB
Inactive:         653384 kB
Active(anon):     804220 kB
Inactive(anon):   118700 kB
Active(file):     338320 kB
Inactive(file):   534684 kB
Unevictable:           0 kB
Mlocked:               0 kB
SwapTotal:             0 kB
SwapFree:              0 kB
Dirty:                 0 kB
Writeback:             0 kB
AnonPages:        736216 kB
Mapped:           523848 kB
Shmem:            186700 kB
Slab:             120944 kB
SReclaimable:      66748 kB
SUnreclaim:        54196 kB
KernelStack:        2876 kB
PageTables:        13020 kB
NFS_Unstable:          0 kB
Bounce:                0 kB
WritebackTmp:          0 kB
CommitLimit:     1002284 kB
Committed_AS:    1201228 kB
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
DirectMap4k:       73600 kB
DirectMap2M:     2023424 kB
```
## dir all-filesystems

```
Directory of file:/

       dr-x          80           Apr 12 14:07  bin
       dr-x         234           Feb 28 13:40  boot
       drwx        2940           Apr 12 14:06  dev
       drwx        1200           May 10 09:10  etc
       drwx          60           Apr 12 14:06  export
       drwx          80           May 10 08:49  home
       dr-x          60           Feb 28 13:41  lib
       drwx        1178           Feb 28 13:41  lib64
       drwx           3           Apr 11  2018  media
       drwx          80           Apr 12 14:06  mnt
       drwx           0           Apr 12 14:05  monitor
       drwx          29           Feb 28 13:41  opt
       drwx         100           Apr 12 14:06  persist
       dr-x           0           Apr 12 14:05  proc
       dr-x          60           Apr 12 14:17  root
       dr-x         311           Feb 28 13:41  rootfs-i386
       drwx        1340           Apr 12 14:21  run
       dr-x          80           Apr 12 14:06  sbin
       drwx           3           Apr 11  2018  srv
       dr-x           0           Apr 12 14:06  sys
       drwx         220           May 10 09:44  tmp
       drwx         120           Feb 28 13:40  usr
       drwx         100           Apr 12 14:06  var

307904512 bytes total (227192832 bytes free)

Directory of flash:/

       -rw-        1617           Apr 12 14:06  AsuFastPktTransmit.log
       drwx        4096            Apr 8 13:45  Fossil
       -rw-         994           Apr 12 14:06  SsuRestore.log
       -rw-         994           Apr 12 14:06  SsuRestoreLegacy.log
       -rw-     7209797           Apr 12 14:01  TerminAttr-1.19.2-1.swix
       -rw-          32           Apr 12 14:01  boot-config
       -rw-          25           Apr 12 14:02  boot-extensions
       drwx        4096           Apr 12 14:12  debug
       drwx        4096            Apr 8 13:45  fastpkttx.backup
       drwx       16384            Mar 2 12:51  lost+found
       drwx        4096           May 10 09:44  persist
       drwx        4096            Apr 8 13:55  schedule
       -rw-        4347           May 10 09:10  startup-config
       -rw-   495254600           Apr 12 14:00  vEOS-lab-4.27.3F.swi
       -rw-   487567618            Mar 2 12:51  vEOS-lab.swi
       -rw-           0           Apr 12 09:54  zerotouch-config

4093313024 bytes total (2557591552 bytes free)

Directory of system:/

       -rw-        4276              <no date>  running-config

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
Tue May 10 09:48:08 2022
Timezone: UTC
Clock source: local
```
## show interfaces

```
Ethernet1 is up, line protocol is up (connected)
  Hardware is Ethernet, address is 5000.0005.0001 (bia 5000.0005.0001)
  Ethernet MTU 9214 bytes, BW 10000000 kbit
  Full-duplex, 10Gb/s, auto negotiation: off, uni-link: n/a
  Up 27 days, 19 hours, 35 minutes, 40 seconds
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
     80097 packets output, 13055779 bytes
     Sent 0 broadcasts, 80097 multicast
     0 output errors, 0 collisions
     0 late collision, 0 deferred, 0 output discards
     0 PAUSE output
Ethernet2 is up, line protocol is up (connected)
  Hardware is Ethernet, address is 5000.0005.0002 (bia 5000.0005.0002)
  Ethernet MTU 9214 bytes, BW 10000000 kbit
  Full-duplex, 10Gb/s, auto negotiation: off, uni-link: n/a
  Up 27 days, 19 hours, 35 minutes, 41 seconds
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
     80097 packets output, 13055779 bytes
     Sent 0 broadcasts, 80097 multicast
     0 output errors, 0 collisions
     0 late collision, 0 deferred, 0 output discards
     0 PAUSE output
Ethernet3 is up, line protocol is up (connected)
  Hardware is Ethernet, address is 5000.0005.0003 (bia 5000.0005.0003)
  Ethernet MTU 9214 bytes, BW 10000000 kbit
  Full-duplex, 10Gb/s, auto negotiation: off, uni-link: n/a
  Up 27 days, 19 hours, 35 minutes, 40 seconds
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
     80097 packets output, 13055779 bytes
     Sent 0 broadcasts, 80097 multicast
     0 output errors, 0 collisions
     0 late collision, 0 deferred, 0 output discards
     0 PAUSE output
Ethernet4 is up, line protocol is up (connected)
  Hardware is Ethernet, address is 5000.0015.f4e8
  Description: P2P_LINK_TO_P1_Ethernet4
  Internet address is 100.64.48.17/31
  Broadcast address is 255.255.255.255
  IP MTU 1500 bytes (default), BW 10000000 kbit
  Full-duplex, 10Gb/s, auto negotiation: off, uni-link: n/a
  Up 27 days, 19 hours, 35 minutes, 40 seconds
  Loopback Mode : None
  2 link status changes since last clear
  Last clearing of "show interface" counters never
  5 minutes input rate 0 bps (0.0% with framing overhead), 0 packets/sec
  5 minutes output rate 0 bps (0.0% with framing overhead), 0 packets/sec
     1921913 packets input, 192813961 bytes
     Received 1 broadcasts, 664565 multicast
     0 runts, 0 giants
     0 input errors, 0 CRC, 0 alignment, 0 symbol, 0 input discards
     0 PAUSE input
     1921249 packets output, 191407953 bytes
     Sent 0 broadcasts, 664201 multicast
     0 output errors, 0 collisions
     0 late collision, 0 deferred, 0 output discards
     0 PAUSE output
Ethernet5 is up, line protocol is up (connected)
  Hardware is Ethernet, address is 5000.0015.f4e8
  Description: P2P_LINK_TO_P3_Ethernet5
  Internet address is 100.64.48.19/31
  Broadcast address is 255.255.255.255
  IP MTU 1500 bytes (default), BW 10000000 kbit
  Full-duplex, 10Gb/s, auto negotiation: off, uni-link: n/a
  Up 27 days, 19 hours, 35 minutes, 40 seconds
  Loopback Mode : None
  2 link status changes since last clear
  Last clearing of "show interface" counters never
  5 minutes input rate 0 bps (0.0% with framing overhead), 0 packets/sec
  5 minutes output rate 0 bps (0.0% with framing overhead), 0 packets/sec
     1921611 packets input, 192789192 bytes
     Received 0 broadcasts, 664391 multicast
     0 runts, 0 giants
     0 input errors, 0 CRC, 0 alignment, 0 symbol, 0 input discards
     0 PAUSE input
     1921277 packets output, 191402493 bytes
     Sent 2 broadcasts, 664123 multicast
     0 output errors, 0 collisions
     0 late collision, 0 deferred, 0 output discards
     0 PAUSE output
Ethernet6 is up, line protocol is up (connected)
  Hardware is Ethernet, address is 5000.0005.0006 (bia 5000.0005.0006)
  Ethernet MTU 9214 bytes, BW 10000000 kbit
  Full-duplex, 10Gb/s, auto negotiation: off, uni-link: n/a
  Up 27 days, 19 hours, 35 minutes, 40 seconds
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
     80097 packets output, 13055779 bytes
     Sent 0 broadcasts, 80097 multicast
     0 output errors, 0 collisions
     0 late collision, 0 deferred, 0 output discards
     0 PAUSE output
Ethernet7 is up, line protocol is up (connected)
  Hardware is Ethernet, address is 5000.0005.0007 (bia 5000.0005.0007)
  Ethernet MTU 9214 bytes, BW 10000000 kbit
  Full-duplex, 10Gb/s, auto negotiation: off, uni-link: n/a
  Up 27 days, 19 hours, 35 minutes, 40 seconds
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
     80097 packets output, 13055779 bytes
     Sent 0 broadcasts, 80097 multicast
     0 output errors, 0 collisions
     0 late collision, 0 deferred, 0 output discards
     0 PAUSE output
Ethernet8 is up, line protocol is up (connected)
  Hardware is Ethernet, address is 5000.0005.0008 (bia 5000.0005.0008)
  Ethernet MTU 9214 bytes, BW 10000000 kbit
  Full-duplex, 10Gb/s, auto negotiation: off, uni-link: n/a
  Up 27 days, 19 hours, 35 minutes, 41 seconds
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
     80097 packets output, 13055779 bytes
     Sent 0 broadcasts, 80097 multicast
     0 output errors, 0 collisions
     0 late collision, 0 deferred, 0 output discards
     0 PAUSE output
Loopback0 is up, line protocol is up (connected)
  Hardware is Loopback
  Description: MPLS_Overlay_peering
  Internet address is 100.70.0.21/32
  Broadcast address is 255.255.255.255
  IP MTU 65535 bytes (default)
  Up 27 days, 19 hours, 34 minutes, 13 seconds
Management1 is up, line protocol is up (connected)
  Hardware is Ethernet, address is 5000.0005.0000 (bia 5000.0005.0000)
  Description: oob_management
  Internet address is 10.30.30.105/24
  Broadcast address is 255.255.255.255
  IP MTU 1500 bytes (default), BW 1000000 kbit
  Full-duplex, 1Gb/s, auto negotiation: on, uni-link: n/a
  Up 27 days, 19 hours, 33 minutes, 56 seconds
  Loopback Mode : None
  8 link status changes since last clear
  Last clearing of "show interface" counters never
  5 minutes input rate 4.94 kbps (0.0% with framing overhead), 7 packets/sec
  5 minutes output rate 17.7 kbps (0.0% with framing overhead), 7 packets/sec
     13594038 packets input, 1078366348 bytes
     Received 837 broadcasts, 3189437 multicast
     0 runts, 0 giants
     0 input errors, 0 CRC, 0 alignment, 0 symbol, 0 input discards
     0 PAUSE input
     10518133 packets output, 2020240513 bytes
     Sent 5 broadcasts, 80098 multicast
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
              89FC97F783045F29E623653C4B974D52                 

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
Ethernet4         100.64.48.17/31       up           up                 1500           
Ethernet5         100.64.48.19/31       up           up                 1500           
Loopback0         100.70.0.21/32        up           up                65535           
Management1       10.30.30.105/24       up           up                 1500
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

 C        100.64.48.16/31 is directly connected, Ethernet4
 C        100.64.48.18/31 is directly connected, Ethernet5
 I L2     100.70.0.11/32 [115/110] via 100.64.48.16, Ethernet4
 I L2     100.70.0.12/32 [115/160] via 100.64.48.16, Ethernet4
 I L2     100.70.0.13/32 [115/110] via 100.64.48.18, Ethernet5
 I L2     100.70.0.14/32 [115/160] via 100.64.48.18, Ethernet5
 C        100.70.0.21/32 is directly connected, Loopback0
 I L2     100.70.0.31/32 [115/60] via 100.64.48.16, Ethernet4
 I L2     100.70.0.32/32 [115/110] via 100.64.48.16, Ethernet4
 I L2     100.70.0.33/32 [115/60] via 100.64.48.18, Ethernet5
 I L2     100.70.0.34/32 [115/110] via 100.64.48.18, Ethernet5


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
May  9 16:10:21 RR Bgp: %BGP-5-ADJCHANGE: peer 100.70.0.13 (VRF default AS 64512) old state Established event OtherConfigurationChange new state Idle
May  9 16:10:21 RR Bgp: %BGP-3-NOTIFICATION: sent to neighbor 100.70.0.14 (VRF default AS 64512) 6/6 (Cease/other configuration change <Hard Reset>) 0 bytes
May  9 16:10:21 RR Bgp: %BGP-3-NOTIFICATION: sent to neighbor 100.70.0.11 (VRF default AS 64512) 6/6 (Cease/other configuration change <Hard Reset>) 0 bytes
May  9 16:10:21 RR Bgp: %BGP-3-NOTIFICATION: sent to neighbor 100.70.0.13 (VRF default AS 64512) 6/6 (Cease/other configuration change <Hard Reset>) 0 bytes
May  9 16:10:23 RR Bgp: %BGP-3-NOTIFICATION: sent to neighbor 100.70.0.11 (VRF default AS 64512) 6/7 (Cease/connection collision resolution) 0 bytes
May  9 16:10:24 RR Bgp: %BGP-5-ADJCHANGE: peer 100.70.0.11 (VRF default AS 64512) old state OpenConfirm event Established new state Established
May  9 16:10:25 RR Bgp: %BGP-3-NOTIFICATION: sent to neighbor 100.70.0.13 (VRF default AS 64512) 6/7 (Cease/connection collision resolution) 0 bytes
May  9 16:10:25 RR Bgp: %BGP-5-ADJCHANGE: peer 100.70.0.13 (VRF default AS 64512) old state OpenConfirm event Established new state Established
May  9 16:10:26 RR Bgp: %BGP-5-ADJCHANGE: peer 100.70.0.12 (VRF default AS 64512) old state OpenConfirm event Established new state Established
May  9 16:10:26 RR Bgp: %BGP-3-NOTIFICATION: received from neighbor 100.70.0.12 (VRF default AS 64512) 6/6 (Cease/other configuration change <Hard Reset>) 0 bytes
May  9 16:10:26 RR Bgp: %BGP-5-ADJCHANGE: peer 100.70.0.12 (VRF default AS 64512) old state Established event RecvHardReset new state Idle
May  9 16:10:27 RR Bgp: %BGP-3-NOTIFICATION: received from neighbor 100.70.0.13 (VRF default AS 64512) 6/6 (Cease/other configuration change <Hard Reset>) 0 bytes
May  9 16:10:27 RR Bgp: %BGP-5-ADJCHANGE: peer 100.70.0.13 (VRF default AS 64512) old state Established event RecvHardReset new state Idle
May  9 16:10:28 RR Bgp: %BGP-3-NOTIFICATION: sent to neighbor 100.70.0.14 (VRF default AS 64512) 6/7 (Cease/connection collision resolution) 0 bytes
May  9 16:10:28 RR Bgp: %BGP-5-ADJCHANGE: peer 100.70.0.14 (VRF default AS 64512) old state OpenConfirm event Established new state Established
May  9 16:10:29 RR Bgp: %BGP-3-NOTIFICATION: received from neighbor 100.70.0.11 (VRF default AS 64512) 6/6 (Cease/other configuration change <Hard Reset>) 0 bytes
May  9 16:10:29 RR Bgp: %BGP-5-ADJCHANGE: peer 100.70.0.11 (VRF default AS 64512) old state Established event RecvHardReset new state Idle
May  9 16:10:30 RR Bgp: %BGP-5-ADJCHANGE: peer 100.70.0.12 (VRF default AS 64512) old state OpenConfirm event Established new state Established
May  9 16:10:31 RR Bgp: %BGP-5-ADJCHANGE: peer 100.70.0.13 (VRF default AS 64512) old state OpenConfirm event Established new state Established
May  9 16:10:32 RR Bgp: %BGP-5-ADJCHANGE: peer 100.70.0.11 (VRF default AS 64512) old state OpenConfirm event Established new state Established
May  9 16:10:35 RR ConfigAgent: %SYS-5-CONFIG_SESSION_COMMIT_SUCCESS: User cvpadmin committed configuration session CVP-configtask-ca4e2cf5-3c67-4939-8b0d-33998dca1836 successfully on TerminAttr (localhost)
May  9 16:10:37 RR ConfigAgent: %SYS-5-CONFIG_STARTUP: Startup config saved from system:/running-config by cvpadmin on TerminAttr (localhost).
May 10 09:09:13 RR ConfigAgent: %SYS-5-CONFIG_SESSION_ENTERED: User cvpsystem entered configuration session capiVerify-2198-dc007be4d04011ecaa4550000015f4e8 on TerminAttr (localhost)
May 10 09:09:16 RR ConfigAgent: %SYS-5-CONFIG_SESSION_EXITED: User cvpsystem exited configuration session capiVerify-2198-dc007be4d04011ecaa4550000015f4e8 on TerminAttr (localhost)
May 10 09:09:16 RR ConfigAgent: %SYS-5-CONFIG_SESSION_ABORTED: User cvpsystem aborted configuration session capiVerify-2198-dc007be4d04011ecaa4550000015f4e8 on TerminAttr (localhost)
May 10 09:10:09 RR ConfigAgent: %SYS-5-CONFIG_SESSION_ENTERED: User cvpadmin entered configuration session CVP-configtask-5e75d462-2ff3-4826-b11b-2c76e3ccaee5 on TerminAttr (localhost)
May 10 09:10:15 RR ConfigAgent: %SYS-5-CONFIG_SESSION_EXITED: User cvpadmin exited configuration session CVP-configtask-5e75d462-2ff3-4826-b11b-2c76e3ccaee5 on TerminAttr (localhost)
May 10 09:10:17 RR ConfigAgent: %SYS-5-CONFIG_SESSION_ENTERED: User cvpadmin entered configuration session CVP-configtask-5e75d462-2ff3-4826-b11b-2c76e3ccaee5 on TerminAttr (localhost)
May 10 09:10:26 RR ConfigAgent: %SYS-5-CONFIG_SESSION_COMMIT_TIMER_STARTED: User cvpadmin committed session CVP-configtask-5e75d462-2ff3-4826-b11b-2c76e3ccaee5 on TerminAttr (localhost), with timer 0:4:0(hr:min:sec).
May 10 09:10:26 RR ConfigAgent: %SYS-5-CONFIG_SESSION_EXITED: User cvpadmin exited configuration session CVP-configtask-5e75d462-2ff3-4826-b11b-2c76e3ccaee5 on TerminAttr (localhost)
May 10 09:10:39 RR ConfigAgent: %SYS-5-CONFIG_SESSION_COMMIT_SUCCESS: User cvpadmin committed configuration session CVP-configtask-5e75d462-2ff3-4826-b11b-2c76e3ccaee5 successfully on TerminAttr (localhost)
May 10 09:10:42 RR ConfigAgent: %SYS-5-CONFIG_STARTUP: Startup config saved from system:/running-config by cvpadmin on TerminAttr (localhost).
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
! device: RR (vEOS-lab, EOS-4.27.3F)
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
hostname RR
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
!
interface Ethernet2
!
interface Ethernet3
!
interface Ethernet4
   description P2P_LINK_TO_P1_Ethernet4
   no switchport
   ip address 100.64.48.17/31
   isis enable CORE
   isis circuit-type level-2
   isis metric 50
   no isis hello padding
   isis network point-to-point
   isis authentication mode md5
   isis authentication key 7 $1c$sTNAlR6rKSw=
!
interface Ethernet5
   description P2P_LINK_TO_P3_Ethernet5
   no switchport
   ip address 100.64.48.19/31
   isis enable CORE
   isis circuit-type level-2
   isis metric 50
   no isis hello padding
   isis network point-to-point
   isis authentication mode md5
   isis authentication key 7 $1c$sTNAlR6rKSw=
!
interface Ethernet6
!
interface Ethernet7
!
interface Ethernet8
!
interface Loopback0
   description MPLS_Overlay_peering
   ip address 100.70.0.21/32
   node-segment ipv4 index 201
   isis enable CORE
   isis passive
!
interface Management1
   description oob_management
   vrf MGMT
   ip address 10.30.30.105/24
!
ip routing
no ip routing vrf MGMT
!
ip route vrf MGMT 0.0.0.0/0 10.30.30.1
!
mpls ip
!
router bfd
   multihop interval 5000 min-rx 5000 multiplier 3
!
router bgp 64512
   router-id 100.70.0.21
   no bgp default ipv4-unicast
   distance bgp 20 200 200
   graceful-restart restart-time 300
   bgp cluster-id 5.5.5.5
   graceful-restart
   bgp route-reflector preserve-attributes always
   maximum-paths 4 ecmp 4
   neighbor MPLS-OVERLAY-PEERS peer group
   neighbor MPLS-OVERLAY-PEERS remote-as 64512
   neighbor MPLS-OVERLAY-PEERS update-source Loopback0
   neighbor MPLS-OVERLAY-PEERS bfd
   neighbor MPLS-OVERLAY-PEERS route-reflector-client
   neighbor MPLS-OVERLAY-PEERS password 7 $1c$U4tL2vQP9QwZlxIV1K3/pw==
   neighbor MPLS-OVERLAY-PEERS send-community
   neighbor MPLS-OVERLAY-PEERS maximum-routes 0
   neighbor RR-OVERLAY-PEERS peer group
   neighbor RR-OVERLAY-PEERS remote-as 64512
   neighbor RR-OVERLAY-PEERS update-source Loopback0
   neighbor RR-OVERLAY-PEERS bfd
   neighbor 100.70.0.11 peer group MPLS-OVERLAY-PEERS
   neighbor 100.70.0.11 description PE-1A
   neighbor 100.70.0.12 peer group MPLS-OVERLAY-PEERS
   neighbor 100.70.0.12 description PE-1B
   neighbor 100.70.0.13 peer group MPLS-OVERLAY-PEERS
   neighbor 100.70.0.13 description PE-2A
   neighbor 100.70.0.14 peer group MPLS-OVERLAY-PEERS
   neighbor 100.70.0.14 description PE-2B
   !
   address-family evpn
      neighbor default encapsulation mpls 
      neighbor MPLS-OVERLAY-PEERS activate
      neighbor RR-OVERLAY-PEERS activate
   !
   address-family ipv4
      no neighbor MPLS-OVERLAY-PEERS activate
      no neighbor RR-OVERLAY-PEERS activate
   !
   address-family vpn-ipv4
      neighbor MPLS-OVERLAY-PEERS activate
      neighbor RR-OVERLAY-PEERS activate
!
router isis CORE
   net 49.0001.0000.0002.0001.00
   router-id ipv4 100.70.0.21
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
Serial number: 89FC97F783045F29E623653C4B974D52
Hardware MAC address: 5000.0015.f4e8
System MAC address: 5000.0015.f4e8

Software image version: 4.27.3F
Architecture: i686
Internal build version: 4.27.3F-26379303.4273F
Internal build ID: 13f8bd28-52d0-40ec-ab80-b12a056d63d4
Image format version: 1.0
Image optimization: None

Uptime: 3 weeks, 6 days, 19 hours and 42 minutes
Total memory: 2004568 kB
Free memory: 916116 kB
```
## show vrf

```
Maximum number of VRFs allowed: 1024
   VRF           Protocols       State         Interfaces   
------------- --------------- ---------------- -------------
   MGMT          IPv4            no routing    Ma1          
   MGMT          IPv6            no routing                 
   default       IPv4            routing       Et4, Et5, Lo0
   default       IPv6            no routing
```
