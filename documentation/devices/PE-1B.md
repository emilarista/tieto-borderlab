# PE-1B
# Table of Contents

- [Management](#management)
  - [Management Interfaces](#management-interfaces)
  - [Name Servers](#name-servers)
  - [Management API HTTP](#management-api-http)
- [Authentication](#authentication)
  - [Local Users](#local-users)
- [Management Security](#management-security)
  - [Management Security Summary](#management-security-summary)
  - [Management Security Configuration](#management-security-configuration)
- [Aliases](#aliases)
- [Monitoring](#monitoring)
  - [TerminAttr Daemon](#terminattr-daemon)
- [Spanning Tree](#spanning-tree)
  - [Spanning Tree Summary](#spanning-tree-summary)
  - [Spanning Tree Device Configuration](#spanning-tree-device-configuration)
- [Internal VLAN Allocation Policy](#internal-vlan-allocation-policy)
  - [Internal VLAN Allocation Policy Summary](#internal-vlan-allocation-policy-summary)
  - [Internal VLAN Allocation Policy Configuration](#internal-vlan-allocation-policy-configuration)
- [VLANs](#vlans)
  - [VLANs Summary](#vlans-summary)
  - [VLANs Device Configuration](#vlans-device-configuration)
- [Interfaces](#interfaces)
  - [Ethernet Interfaces](#ethernet-interfaces)
  - [Port-Channel Interfaces](#port-channel-interfaces)
  - [Loopback Interfaces](#loopback-interfaces)
  - [VLAN Interfaces](#vlan-interfaces)
- [Routing](#routing)
  - [Service Routing Protocols Model](#service-routing-protocols-model)
  - [Virtual Router MAC Address](#virtual-router-mac-address)
  - [IP Routing](#ip-routing)
  - [IPv6 Routing](#ipv6-routing)
  - [Static Routes](#static-routes)
  - [Router ISIS](#router-isis)
  - [Router BGP](#router-bgp)
- [BFD](#bfd)
  - [Router BFD](#router-bfd)
- [MPLS](#mpls)
  - [MPLS and LDP](#mpls-and-ldp)
  - [MPLS Interfaces](#mpls-interfaces)
- [Patch Panel](#patch-panel)
  - [Patch Panel Summary](#patch-panel-summary)
  - [Patch Panel Configuration](#patch-panel-configuration)
- [Multicast](#multicast)
  - [IP IGMP Snooping](#ip-igmp-snooping)
- [Filters](#filters)
  - [Route-maps](#route-maps)
- [ACL](#acl)
- [VRF Instances](#vrf-instances)
  - [VRF Instances Summary](#vrf-instances-summary)
  - [VRF Instances Device Configuration](#vrf-instances-device-configuration)
- [Quality Of Service](#quality-of-service)

# Management

## Management Interfaces

### Management Interfaces Summary

#### IPv4

| Management Interface | description | Type | VRF | IP Address | Gateway |
| -------------------- | ----------- | ---- | --- | ---------- | ------- |
| Management1 | oob_management | oob | MGMT | 10.30.30.102/24 | 10.30.30.1 |

#### IPv6

| Management Interface | description | Type | VRF | IPv6 Address | IPv6 Gateway |
| -------------------- | ----------- | ---- | --- | ------------ | ------------ |
| Management1 | oob_management | oob | MGMT | -  | - |

### Management Interfaces Device Configuration

```eos
!
interface Management1
   description oob_management
   no shutdown
   vrf MGMT
   ip address 10.30.30.102/24
```

## Name Servers

### Name Servers Summary

| Name Server | Source VRF |
| ----------- | ---------- |
| 10.20.20.13 | MGMT |
| 8.8.8.8 | MGMT |

### Name Servers Device Configuration

```eos
ip name-server vrf MGMT 8.8.8.8
ip name-server vrf MGMT 10.20.20.13
```

## Management API HTTP

### Management API HTTP Summary

| HTTP | HTTPS |
| ---- | ----- |
| False | True |

### Management API VRF Access

| VRF Name | IPv4 ACL | IPv6 ACL |
| -------- | -------- | -------- |
| MGMT | - | - |

### Management API HTTP Configuration

```eos
!
management api http-commands
   protocol https
   no shutdown
   !
   vrf MGMT
      no shutdown
```

# Authentication

## Local Users

### Local Users Summary

| User | Privilege | Role |
| ---- | --------- | ---- |
| cvpadmin | 15 | network-admin |
| emil | 15 | network-admin |

### Local Users Device Configuration

```eos
!
username cvpadmin privilege 15 role network-admin secret sha512 $6$WRH0YV9I461XA.qn$BYsYGThSIHOh4ic8qdjnHWq9Zi/l0W8Ws4DZ5Y5yI3hBBWGP03W3ggXWdY7MTqVA8plRvaazG/U8CeMPkT5aE.
username emil privilege 15 role network-admin secret sha512 $6$kiCAKn8fb8T12ClP$UchWUxo0y/CpYptWYxj7pC8uzjoUJnvi4lSg1c009mqJG2inlUDQdTi/YVY4M0dzgf4LOkaVtL7U11ZRkP7Rm/
```

# Management Security

## Management Security Summary

| Settings | Value |
| -------- | ----- |
| Common password encryption key | True |

## Management Security Configuration

```eos
!
management security
   password encryption-key common
```

# Aliases

```eos
alias meminfo bash cat /proc/meminfo
alias cpuinfo bash cat /proc/cpuinfo

!
```

# Monitoring

## TerminAttr Daemon

### TerminAttr Daemon Summary

| CV Compression | CloudVision Servers | VRF | Authentication | Smash Excludes | Ingest Exclude | Bypass AAA |
| -------------- | ------------------- | --- | -------------- | -------------- | -------------- | ---------- |
| gzip | 10.20.20.20:9910 | MGMT | key,dudeface | ale,flexCounter,hardware,kni,pulse,strata | /Sysdb/cell/1/agent,/Sysdb/cell/2/agent | False |

### TerminAttr Daemon Device Configuration

```eos
!
daemon TerminAttr
   exec /usr/bin/TerminAttr -cvaddr=10.20.20.20:9910 -cvauth=key,dudeface -cvvrf=MGMT -smashexcludes=ale,flexCounter,hardware,kni,pulse,strata -ingestexclude=/Sysdb/cell/1/agent,/Sysdb/cell/2/agent -taillogs
   no shutdown
```

# Spanning Tree

## Spanning Tree Summary

STP mode: **mstp**

STP Root Super: **True**

### MSTP Instance and Priority

| Instance(s) | Priority |
| -------- | -------- |
| 0 | 4096 |

## Spanning Tree Device Configuration

```eos
!
spanning-tree root super
spanning-tree mode mstp
spanning-tree mst 0 priority 4096
```

# Internal VLAN Allocation Policy

## Internal VLAN Allocation Policy Summary

| Policy Allocation | Range Beginning | Range Ending |
| ------------------| --------------- | ------------ |
| ascending | 1006 | 1199 |

## Internal VLAN Allocation Policy Configuration

```eos
!
vlan internal order ascending range 1006 1199
```

# VLANs

## VLANs Summary

| VLAN ID | Name | Trunk Groups |
| ------- | ---- | ------------ |
| 10 | TENANT_A_L2_P2MP_SERVICE | - |
| 1001 | TENANT_A_SITE1_IRB | - |

## VLANs Device Configuration

```eos
!
vlan 10
   name TENANT_A_L2_P2MP_SERVICE
!
vlan 1001
   name TENANT_A_SITE1_IRB
```

# Interfaces

## Ethernet Interfaces

### Ethernet Interfaces Summary

#### L2

| Interface | Description | Mode | VLANs | Native VLAN | Trunk Group | Channel-Group |
| --------- | ----------- | ---- | ----- | ----------- | ----------- | ------------- |
| Ethernet3 | A_CPE1_SITE1_PO2_Ethernet4 | *trunk | *10,1001 | *- | *- | 3 |

*Inherited from Port-Channel Interface

#### IPv4

| Interface | Description | Type | Channel Group | IP Address | VRF |  MTU | Shutdown | ACL In | ACL Out |
| --------- | ----------- | -----| ------------- | ---------- | ----| ---- | -------- | ------ | ------- |
| Ethernet2 | P2P_LINK_TO_P2_Ethernet2 | routed | - | 100.64.48.6/31 | default | 1500 | false | - | - |
| Ethernet4 | ROUTED_PORTS_CPE1 | routed | - | 30.30.30.3/31 | TENANT_A_IPVPN | 1500 | false | - | - |

#### ISIS

| Interface | Channel Group | ISIS Instance | ISIS Metric | Mode | ISIS Circuit Type | Hello Padding | Authentication Mode |
| --------- | ------------- | ------------- | ----------- | ---- | ----------------- | ------------- | ------------------- |
| Ethernet2 | - | CORE | 50 | point-to-point | level-2 | False | md5 |

### Ethernet Interfaces Device Configuration

```eos
!
interface Ethernet1
   no shutdown
   channel-group 1 mode active
!
interface Ethernet2
   description P2P_LINK_TO_P2_Ethernet2
   no shutdown
   mtu 1500
   no switchport
   ip address 100.64.48.6/31
   mpls ip
   isis enable CORE
   isis circuit-type level-2
   isis metric 50
   no isis hello padding
   isis network point-to-point
   isis authentication mode md5
   isis authentication key 7 $1c$sTNAlR6rKSw=
!
interface Ethernet3
   description A_CPE1_SITE1_PO2_Ethernet4
   no shutdown
   channel-group 3 mode active
!
interface Ethernet4
   description ROUTED_PORTS_CPE1
   no shutdown
   mtu 1500
   no switchport
   vrf TENANT_A_IPVPN
   ip address 30.30.30.3/31
```

## Port-Channel Interfaces

### Port-Channel Interfaces Summary

#### L2

| Interface | Description | Type | Mode | VLANs | Native VLAN | Trunk Group | LACP Fallback Timeout | LACP Fallback Mode | MLAG ID | EVPN ESI |
| --------- | ----------- | ---- | ---- | ----- | ----------- | ------------| --------------------- | ------------------ | ------- | -------- |
| Port-Channel3 | A_CPE1_SITE1_PO2_EVPN-A-A-PortChannel | switched | trunk | 10,1001 | - | - | - | - | - | 0000:0000:0000:1111:3333 |

### Port-Channel Interfaces Device Configuration

```eos
!
interface Port-Channel1
   no shutdown
   no switchport
   evpn ethernet-segment
      identifier 0000:0000:0000:1111:1111
      route-target import 00:00:11:11:11:11
   lacp system-id 0000.1111.1111
!
interface Port-Channel3
   description A_CPE1_SITE1_PO2_EVPN-A-A-PortChannel
   no shutdown
   switchport
   switchport trunk allowed vlan 10,1001
   switchport mode trunk
   evpn ethernet-segment
      identifier 0000:0000:0000:1111:3333
      route-target import 00:00:11:11:33:33
   lacp system-id 0000.1111.3333
   spanning-tree portfast
```

## Loopback Interfaces

### Loopback Interfaces Summary

#### IPv4

| Interface | Description | VRF | IP Address |
| --------- | ----------- | --- | ---------- |
| Loopback0 | MPLS_Overlay_peering | default | 100.70.0.12/32 |

#### IPv6

| Interface | Description | VRF | IPv6 Address |
| --------- | ----------- | --- | ------------ |
| Loopback0 | MPLS_Overlay_peering | default | - |

#### ISIS

| Interface | ISIS instance | ISIS metric | Interface mode |
| --------- | ------------- | ----------- | -------------- |
| Loopback0 | CORE | - | passive |

### Loopback Interfaces Device Configuration

```eos
!
interface Loopback0
   description MPLS_Overlay_peering
   no shutdown
   ip address 100.70.0.12/32
   isis enable CORE
   isis passive
   node-segment ipv4 index 102
```

## VLAN Interfaces

### VLAN Interfaces Summary

| Interface | Description | VRF |  MTU | Shutdown |
| --------- | ----------- | --- | ---- | -------- |
| Vlan1001 | TENANT_A_SITE1_IRB | TENANT_A_L3VPN | - | false |

#### IPv4

| Interface | VRF | IP Address | IP Address Virtual | IP Router Virtual Address | VRRP | ACL In | ACL Out |
| --------- | --- | ---------- | ------------------ | ------------------------- | ---- | ------ | ------- |
| Vlan1001 |  TENANT_A_L3VPN  |  10.1.10.3/27  |  -  |  10.1.10.1  |  -  |  -  |  -  |


### VLAN Interfaces Device Configuration

```eos
!
interface Vlan1001
   description TENANT_A_SITE1_IRB
   no shutdown
   vrf TENANT_A_L3VPN
   ip address 10.1.10.3/27
   ip virtual-router address 10.1.10.1
```

# Routing
## Service Routing Protocols Model

Multi agent routing protocol model enabled

```eos
!
service routing protocols model multi-agent
```

## Virtual Router MAC Address

### Virtual Router MAC Address Summary

#### Virtual Router MAC Address: 00:1c:73:00:dc:00

### Virtual Router MAC Address Configuration

```eos
!
ip virtual-router mac-address 00:1c:73:00:dc:00
```

## IP Routing

### IP Routing Summary

| VRF | Routing Enabled |
| --- | --------------- |
| default | true |
| MGMT | false |
| TENANT_A_IPVPN | true |
| TENANT_A_L3VPN | true |

### IP Routing Device Configuration

```eos
!
ip routing
no ip routing vrf MGMT
ip routing vrf TENANT_A_IPVPN
ip routing vrf TENANT_A_L3VPN
```
## IPv6 Routing

### IPv6 Routing Summary

| VRF | Routing Enabled |
| --- | --------------- |
| default | false |
| MGMT | false |
| TENANT_A_IPVPN | false |
| TENANT_A_L3VPN | false |

## Static Routes

### Static Routes Summary

| VRF | Destination Prefix | Next Hop IP             | Exit interface      | Administrative Distance       | Tag               | Route Name                    | Metric         |
| --- | ------------------ | ----------------------- | ------------------- | ----------------------------- | ----------------- | ----------------------------- | -------------- |
| MGMT | 0.0.0.0/0 | 10.30.30.1 | - | 1 | - | - | - |

### Static Routes Device Configuration

```eos
!
ip route vrf MGMT 0.0.0.0/0 10.30.30.1
```

## Router ISIS

### Router ISIS Summary

| Settings | Value |
| -------- | ----- |
| Instance | CORE |
| Net-ID | 49.0001.0000.0001.0002.00 |
| Type | level-2 |
| Address Family | ipv4 unicast |
| Router-ID | 100.70.0.12 |
| Log Adjacency Changes | True |
| Local Convergence Delay (ms) | 15000 |
| Advertise Passive-only | True |
| SR MPLS Enabled | True |

### ISIS Interfaces Summary

| Interface | ISIS Instance | ISIS Metric | Interface Mode |
| --------- | ------------- | ----------- | -------------- |
| Ethernet2 | CORE | 50 | point-to-point |
| Loopback0 | CORE | - | passive |

### ISIS Segment-routing Node-SID

| Loopback | IPv4 Index | IPv6 Index |
| -------- | ---------- | ---------- |
| Loopback0 | 102 | - |

### Router ISIS Device Configuration

```eos
!
router isis CORE
   net 49.0001.0000.0001.0002.00
   is-type level-2
   router-id ipv4 100.70.0.12
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
```

## Router BGP

### Router BGP Summary

| BGP AS | Router ID |
| ------ | --------- |
| 64512|  100.70.0.12 |

| BGP Tuning |
| ---------- |
| no bgp default ipv4-unicast |
| distance bgp 20 200 200 |
| graceful-restart restart-time 300 |
| graceful-restart |
| maximum-paths 4 ecmp 4 |

### Router BGP Peer Groups

#### MPLS-OVERLAY-PEERS

| Settings | Value |
| -------- | ----- |
| Address Family | mpls |
| Remote AS | 64512 |
| Source | Loopback0 |
| BFD | True |
| Send community | all |
| Maximum routes | 0 (no limit) |

### BGP Neighbors

| Neighbor | Remote AS | VRF | Shutdown | Send-community | Maximum-routes | Allowas-in | BFD | RIB Pre-Policy Retain |
| -------- | --------- | --- | -------- | -------------- | -------------- | ---------- | --- | -------------- |
| 100.70.0.21 | Inherited from peer group MPLS-OVERLAY-PEERS | default | - | Inherited from peer group MPLS-OVERLAY-PEERS | Inherited from peer group MPLS-OVERLAY-PEERS | - | Inherited from peer group MPLS-OVERLAY-PEERS | - |
| 10.1.10.4 | 12345 | TENANT_A_L3VPN | - | - | - | - | - | - |

### Router BGP EVPN Address Family

#### EVPN Peer Groups

| Peer Group | Activate |
| ---------- | -------- |
| MPLS-OVERLAY-PEERS | True |

#### EVPN Neighbor Default Encapsulation

| Neighbor Default Encapsulation | Next-hop-self Source Interface |
| ------------------------------ | ------------------------------ |
| mpls | Loopback0 |

### Router BGP VLANs

| VLAN | Route-Distinguisher | Both Route-Target | Import Route Target | Export Route-Target | Redistribute |
| ---- | ------------------- | ----------------- | ------------------- | ------------------- | ------------ |
| 10 | 100.70.0.12:10010 | 64512:10010 | - | - | learned |
| 1001 | 100.70.0.12:11001 | 64512:11001 | - | - | learned |

### Router BGP VPWS Instances

| Instance | Route-Distinguisher | Both Route-Target | MPLS Control Word | Label Flow | MTU | Pseudowire | Local ID | Remote ID |
| -------- | ------------------- | ----------------- | ----------------- | -----------| --- | ---------- | -------- | --------- |
| TENANT_A | 100.70.0.12:1000 | 64512:1000 | False | False | - | TEN_A_site3_site5_eline_vlan_based | 11000 | 21000 |

### Router BGP VRFs

| VRF | Route-Distinguisher | Redistribute |
| --- | ------------------- | ------------ |
| TENANT_A_IPVPN | 100.70.0.12:2 | connected |
| TENANT_A_L3VPN | 100.70.0.12:1 | connected |

### Router BGP Device Configuration

```eos
!
router bgp 64512
   router-id 100.70.0.12
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
      rd 100.70.0.12:10010
      route-target both 64512:10010
      redistribute learned
   !
   vlan 1001
      rd 100.70.0.12:11001
      route-target both 64512:11001
      redistribute learned
   !
   vpws TENANT_A
      rd 100.70.0.12:1000
      route-target import export evpn 64512:1000
      !
      pseudowire TEN_A_site3_site5_eline_vlan_based
         evpn vpws id local 11000 remote 21000
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
      rd 100.70.0.12:2
      route-target import vpn-ipv4 64512:2
      route-target export vpn-ipv4 64512:2
      router-id 100.70.0.12
      redistribute connected
   !
   vrf TENANT_A_L3VPN
      rd 100.70.0.12:1
      route-target import evpn 64512:1
      route-target export evpn 64512:1
      router-id 100.70.0.12
      neighbor 10.1.10.4 remote-as 12345
      neighbor 10.1.10.4 password 7 $1c$U4tL2vQP9QwZlxIV1K3/pw==
      neighbor 10.1.10.4 description TENANT_A_CPE_SITE1
      neighbor 10.1.10.4 route-map RM-TENANT_A_L3VPN-10.1.10.4-SET-NEXT-HOP-OUT out
      redistribute connected
      !
      address-family ipv4
         neighbor 10.1.10.4 activate
```

# BFD

## Router BFD

### Router BFD Multihop Summary

| Interval | Minimum RX | Multiplier |
| -------- | ---------- | ---------- |
| 5000 | 5000 | 3 |

### Router BFD Device Configuration

```eos
!
router bfd
   multihop interval 5000 min-rx 5000 multiplier 3
```

# MPLS

## MPLS and LDP

### MPLS and LDP Summary

| Setting | Value |
| -------- | ---- |
| MPLS IP Enabled | True |
| LDP Enabled | False |
| LDP Router ID | - |
| LDP Interface Disabled Default | - |
| LDP Transport-Address Interface | - |

### MPLS and LDP Configuration

```eos
!
mpls ip
```

## MPLS Interfaces

| Interface | MPLS IP Enabled | LDP Enabled | IGP Sync |
| --------- | --------------- | ----------- | -------- |
| Ethernet2 | True | - | - |
| Loopback0 | - | - | - |

# Patch Panel

## Patch Panel Summary

| Patch Name | Enabled | Connector A Type | Connector A Endpoint | Connector B Type | Connector B Endpoint |
| ---------- | ------- | ---------------- | -------------------- | ---------------- | -------------------- |
| TEN_A_site3_site5_eline_vlan_based | True | Interface | Port-Channel1 | Pseudowire | bgp vpws TENANT_A pseudowire TEN_A_site3_site5_eline_vlan_based |

## Patch Panel Configuration

```eos
!
patch panel
   patch TEN_A_site3_site5_eline_vlan_based
      connector 1 interface Port-Channel1
      connector 2 pseudowire bgp vpws TENANT_A pseudowire TEN_A_site3_site5_eline_vlan_based
   !
```

# Multicast

## IP IGMP Snooping

### IP IGMP Snooping Summary

| IGMP Snooping | Fast Leave | Interface Restart Query | Proxy | Restart Query Interval | Robustness Variable |
| ------------- | ---------- | ----------------------- | ----- | ---------------------- | ------------------- |
| Enabled | - | - | - | - | - |

### IP IGMP Snooping Device Configuration

```eos
```

# Filters

## Route-maps

### Route-maps Summary

#### RM-TENANT_A_L3VPN-10.1.10.4-SET-NEXT-HOP-OUT

| Sequence | Type | Match and/or Set |
| -------- | ---- | ---------------- |
| 10 | permit | set ip next-hop 10.1.10.1 |

### Route-maps Device Configuration

```eos
!
route-map RM-TENANT_A_L3VPN-10.1.10.4-SET-NEXT-HOP-OUT permit 10
   set ip next-hop 10.1.10.1
```

# ACL

# VRF Instances

## VRF Instances Summary

| VRF Name | IP Routing |
| -------- | ---------- |
| MGMT | disabled |
| TENANT_A_IPVPN | enabled |
| TENANT_A_L3VPN | enabled |

## VRF Instances Device Configuration

```eos
!
vrf instance MGMT
!
vrf instance TENANT_A_IPVPN
!
vrf instance TENANT_A_L3VPN
```

# Quality Of Service
