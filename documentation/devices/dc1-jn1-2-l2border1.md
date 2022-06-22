# dc1-jn1-2-l2border1
# Table of Contents

- [Management](#management)
  - [Management Interfaces](#management-interfaces)
  - [DNS Domain](#dns-domain)
  - [Name Servers](#name-servers)
  - [NTP](#ntp)
  - [Management API HTTP](#management-api-http)
- [Authentication](#authentication)
  - [Local Users](#local-users)
- [Management Security](#management-security)
  - [Management Security Summary](#management-security-summary)
  - [Management Security Configuration](#management-security-configuration)
- [Monitoring](#monitoring)
  - [TerminAttr Daemon](#terminattr-daemon)
  - [Event Handler](#event-handler)
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
  - [Interface Defaults](#interface-defaults)
  - [Ethernet Interfaces](#ethernet-interfaces)
  - [Loopback Interfaces](#loopback-interfaces)
  - [VXLAN Interface](#vxlan-interface)
- [Routing](#routing)
  - [Service Routing Protocols Model](#service-routing-protocols-model)
  - [IP Routing](#ip-routing)
  - [IPv6 Routing](#ipv6-routing)
  - [Static Routes](#static-routes)
  - [Router BGP](#router-bgp)
- [BFD](#bfd)
  - [Router BFD](#router-bfd)
- [Multicast](#multicast)
  - [IP IGMP Snooping](#ip-igmp-snooping)
- [Filters](#filters)
  - [Prefix-lists](#prefix-lists)
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
| Management1 | oob_management | oob | MGMT | 10.83.31.245/22 | 10.83.28.1 |

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
   ip address 10.83.31.245/22
```

## DNS Domain

### DNS domain: lab.local

### DNS Domain Device Configuration

```eos
dns domain lab.local
!
```

## Name Servers

### Name Servers Summary

| Name Server | Source VRF |
| ----------- | ---------- |
| 10.100.163.10 | MGMT |

### Name Servers Device Configuration

```eos
ip name-server vrf MGMT 10.100.163.10
```

## NTP

### NTP Summary

#### NTP Servers

| Server | VRF | Preferred | Burst | iBurst | Version | Min Poll | Max Poll | Local-interface | Key |
| ------ | --- | --------- | ----- | ------ | ------- | -------- | -------- | --------------- | --- |
| 10.100.163.10 | MGMT | - | - | - | - | - | - | - | - |

### NTP Device Configuration

```eos
!
ntp server vrf MGMT 10.100.163.10
```

## Management API HTTP

### Management API HTTP Summary

| HTTP | HTTPS | Default Services |
| ---- | ----- | ---------------- |
| False | True | - |

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
| admin | 15 | network-admin |
| ansible | 15 | network-admin |
| cvp-infra | 15 | - |
| switch-infra | 15 | - |

### Local Users Device Configuration

```eos
!
username admin privilege 15 role network-admin nopassword
username ansible privilege 15 role network-admin secret sha512 $6$tYUvq9vOikmr2wzF$9nUXlgG5xYINfUEPUl4sRgSEXpswnlnrRjTNDHUTFTquj6at4ze3ypxhEupp0lIJaIzlaFj4nJxWtKgSOuyuE1
username cvp-infra privilege 15 secret sha512 $6$.I7/ZR/zlLIUv8fr$vR/JvLTbq5amMt6Y1SE4CKlPDv/AzJYlFYHkUZ17BDovm0Oi4aLdBULe1EmZ0Y9xKjVLMKpxCSKmlrAioDxbQ0
username switch-infra privilege 15 nopassword
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

# Monitoring

## TerminAttr Daemon

### TerminAttr Daemon Summary

| CV Compression | CloudVision Servers | VRF | Authentication | Smash Excludes | Ingest Exclude | Bypass AAA |
| -------------- | ------------------- | --- | -------------- | -------------- | -------------- | ---------- |
| gzip | 10.83.29.224:9910 | MGMT | key,IngestKey | ale,flexCounter,hardware,kni,pulse,strata | /Sysdb/cell/1/agent,/Sysdb/cell/2/agent | False |

### TerminAttr Daemon Device Configuration

```eos
!
daemon TerminAttr
   exec /usr/bin/TerminAttr -cvaddr=10.83.29.224:9910 -cvauth=key,IngestKey -cvvrf=MGMT -smashexcludes=ale,flexCounter,hardware,kni,pulse,strata -ingestexclude=/Sysdb/cell/1/agent,/Sysdb/cell/2/agent -taillogs
   no shutdown
```

## Event Handler

### Event Handler Summary

| Handler | Action Type | Action | Trigger |
| ------- | ----------- | ------ | ------- |
| evpn-blacklist-recovery | bash | FastCli -p 15 -c "clear bgp evpn host-flap" | on-logging |

### Event Handler Device Configuration

```eos
!
event-handler evpn-blacklist-recovery
   trigger on-logging
      regex EVPN-3-BLACKLISTED_DUPLICATE_MAC
   action bash FastCli -p 15 -c "clear bgp evpn host-flap"
   delay 300
```

# Spanning Tree

## Spanning Tree Summary

STP mode: **mstp**

### MSTP Instance and Priority

| Instance(s) | Priority |
| -------- | -------- |
| 0 | 4096 |

## Spanning Tree Device Configuration

```eos
!
spanning-tree mode mstp
spanning-tree mst 0 priority 4096
```

# Internal VLAN Allocation Policy

## Internal VLAN Allocation Policy Summary

| Policy Allocation | Range Beginning | Range Ending |
| ------------------| --------------- | ------------ |
| ascending | 3700 | 3900 |

## Internal VLAN Allocation Policy Configuration

```eos
!
vlan internal order ascending range 3700 3900
```

# VLANs

## VLANs Summary

| VLAN ID | Name | Trunk Groups |
| ------- | ---- | ------------ |
| 10 | TENANT_A_INSIDE_L3_TEST_1 | - |
| 20 | TENANT_A_INSIDE_L3_TEST_2 | - |
| 30 | TENANT_A_INSIDE_L3_TEST_3 | - |
| 110 | TENANT_B_INSIDE_L3_TEST_1 | - |
| 120 | TENANT_B_INSIDE_L3_TEST_2 | - |
| 130 | TENANT_B_INSIDE_L3_TEST_3 | - |

## VLANs Device Configuration

```eos
!
vlan 10
   name TENANT_A_INSIDE_L3_TEST_1
!
vlan 20
   name TENANT_A_INSIDE_L3_TEST_2
!
vlan 30
   name TENANT_A_INSIDE_L3_TEST_3
!
vlan 110
   name TENANT_B_INSIDE_L3_TEST_1
!
vlan 120
   name TENANT_B_INSIDE_L3_TEST_2
!
vlan 130
   name TENANT_B_INSIDE_L3_TEST_3
```

# Interfaces

## Interface Defaults

### Interface Defaults Summary

- Default Ethernet Interface Shutdown: True

### Interface Defaults Configuration

```eos
!
interface defaults
   ethernet
      shutdown
```

## Ethernet Interfaces

### Ethernet Interfaces Summary

#### L2

| Interface | Description | Mode | VLANs | Native VLAN | Trunk Group | Channel-Group |
| --------- | ----------- | ---- | ----- | ----------- | ----------- | ------------- |

*Inherited from Port-Channel Interface

#### IPv4

| Interface | Description | Type | Channel Group | IP Address | VRF |  MTU | Shutdown | ACL In | ACL Out |
| --------- | ----------- | -----| ------------- | ---------- | ----| ---- | -------- | ------ | ------- |
| Ethernet1 | P2P_LINK_TO_DC1-SPINE1_Ethernet9 | routed | - | 100.64.10.65/31 | default | 1500 | false | - | - |

### Ethernet Interfaces Device Configuration

```eos
!
interface Ethernet1
   description P2P_LINK_TO_DC1-SPINE1_Ethernet9
   no shutdown
   mtu 1500
   no switchport
   ip address 100.64.10.65/31
```

## Loopback Interfaces

### Loopback Interfaces Summary

#### IPv4

| Interface | Description | VRF | IP Address |
| --------- | ----------- | --- | ---------- |
| Loopback0 | EVPN_Overlay_Peering | default | 100.64.11.19/32 |
| Loopback1 | VTEP_VXLAN_Tunnel_Source | default | 100.64.12.19/32 |

#### IPv6

| Interface | Description | VRF | IPv6 Address |
| --------- | ----------- | --- | ------------ |
| Loopback0 | EVPN_Overlay_Peering | default | - |
| Loopback1 | VTEP_VXLAN_Tunnel_Source | default | - |


### Loopback Interfaces Device Configuration

```eos
!
interface Loopback0
   description EVPN_Overlay_Peering
   no shutdown
   ip address 100.64.11.19/32
!
interface Loopback1
   description VTEP_VXLAN_Tunnel_Source
   no shutdown
   ip address 100.64.12.19/32
```

## VXLAN Interface

### VXLAN Interface Summary

| Setting | Value |
| ------- | ----- |
| Source Interface | Loopback1 |
| UDP port | 4789 |

#### VLAN to VNI, Flood List and Multicast Group Mappings

| VLAN | VNI | Flood List | Multicast Group |
| ---- | --- | ---------- | --------------- |
| 10 | 110010 | - | - |
| 20 | 110020 | - | - |
| 30 | 110030 | - | - |
| 110 | 120110 | - | - |
| 120 | 120120 | - | - |
| 130 | 120130 | - | - |

### VXLAN Interface Device Configuration

```eos
!
interface Vxlan1
   description dc1-jn1-2-l2border1_VTEP
   vxlan source-interface Loopback1
   vxlan udp-port 4789
   vxlan vlan 10 vni 110010
   vxlan vlan 20 vni 110020
   vxlan vlan 30 vni 110030
   vxlan vlan 110 vni 120110
   vxlan vlan 120 vni 120120
   vxlan vlan 130 vni 120130
```

# Routing
## Service Routing Protocols Model

Multi agent routing protocol model enabled

```eos
!
service routing protocols model multi-agent
```

## IP Routing

### IP Routing Summary

| VRF | Routing Enabled |
| --- | --------------- |
| default | true |
| MGMT | false |

### IP Routing Device Configuration

```eos
!
ip routing
no ip routing vrf MGMT
```
## IPv6 Routing

### IPv6 Routing Summary

| VRF | Routing Enabled |
| --- | --------------- |
| default | false |
| MGMT | false |

## Static Routes

### Static Routes Summary

| VRF | Destination Prefix | Next Hop IP             | Exit interface      | Administrative Distance       | Tag               | Route Name                    | Metric         |
| --- | ------------------ | ----------------------- | ------------------- | ----------------------------- | ----------------- | ----------------------------- | -------------- |
| MGMT | 0.0.0.0/0 | 10.83.28.1 | - | 1 | - | - | - |

### Static Routes Device Configuration

```eos
!
ip route vrf MGMT 0.0.0.0/0 10.83.28.1
```

## Router BGP

### Router BGP Summary

| BGP AS | Router ID |
| ------ | --------- |
| 65107|  100.64.11.19 |

| BGP Tuning |
| ---------- |
| no bgp default ipv4-unicast |
| distance bgp 20 200 200 |
| graceful-restart restart-time 300 |
| graceful-restart |
| maximum-paths 4 ecmp 4 |

### Router BGP Peer Groups

#### EVPN-OVERLAY-PEERS

| Settings | Value |
| -------- | ----- |
| Address Family | evpn |
| Source | Loopback0 |
| BFD | True |
| Ebgp multihop | 10 |
| Send community | all |
| Maximum routes | 0 (no limit) |

#### IPv4-UNDERLAY-PEERS

| Settings | Value |
| -------- | ----- |
| Address Family | ipv4 |
| Send community | all |
| Maximum routes | 12000 |

### BGP Neighbors

| Neighbor | Remote AS | VRF | Shutdown | Send-community | Maximum-routes | Allowas-in | BFD | RIB Pre-Policy Retain |
| -------- | --------- | --- | -------- | -------------- | -------------- | ---------- | --- | --------------------- |
| 100.64.10.64 | 65001 | default | - | Inherited from peer group IPv4-UNDERLAY-PEERS | Inherited from peer group IPv4-UNDERLAY-PEERS | - | - | - |
| 100.64.11.1 | 65001 | default | - | Inherited from peer group EVPN-OVERLAY-PEERS | Inherited from peer group EVPN-OVERLAY-PEERS | - | Inherited from peer group EVPN-OVERLAY-PEERS | - |

### Router BGP EVPN Address Family

#### EVPN Peer Groups

| Peer Group | Activate |
| ---------- | -------- |
| EVPN-OVERLAY-PEERS | True |

#### EVPN Host Flapping Settings

| State | Window | Threshold | Expiry Timeout |
| ----- | ------ | --------- | -------------- |
| Enabled | 180 Seconds | 15 | - |

### Router BGP VLANs

| VLAN | Route-Distinguisher | Both Route-Target | Import Route Target | Export Route-Target | Redistribute |
| ---- | ------------------- | ----------------- | ------------------- | ------------------- | ------------ |
| 10 | 100.64.11.19:110010 | 65000:110010 | - | - | learned |
| 20 | 100.64.11.19:110020 | 65000:110020 | - | - | learned |
| 30 | 100.64.11.19:110030 | 65000:110030 | - | - | learned |
| 110 | 100.64.11.19:120110 | 65000:120110 | - | - | learned |
| 120 | 100.64.11.19:120120 | 65000:120120 | - | - | learned |
| 130 | 100.64.11.19:120130 | 65000:120130 | - | - | learned |

### Router BGP Device Configuration

```eos
!
router bgp 65107
   router-id 100.64.11.19
   no bgp default ipv4-unicast
   distance bgp 20 200 200
   graceful-restart restart-time 300
   graceful-restart
   maximum-paths 4 ecmp 4
   neighbor EVPN-OVERLAY-PEERS peer group
   neighbor EVPN-OVERLAY-PEERS update-source Loopback0
   neighbor EVPN-OVERLAY-PEERS bfd
   neighbor EVPN-OVERLAY-PEERS ebgp-multihop 10
   neighbor EVPN-OVERLAY-PEERS password 7 $1c$U4tL2vQP9QwZlxIV1K3/pw==
   neighbor EVPN-OVERLAY-PEERS send-community
   neighbor EVPN-OVERLAY-PEERS maximum-routes 0
   neighbor IPv4-UNDERLAY-PEERS peer group
   neighbor IPv4-UNDERLAY-PEERS password 7 $1c$U4tL2vQP9QwZlxIV1K3/pw==
   neighbor IPv4-UNDERLAY-PEERS send-community
   neighbor IPv4-UNDERLAY-PEERS maximum-routes 12000
   neighbor 100.64.10.64 peer group IPv4-UNDERLAY-PEERS
   neighbor 100.64.10.64 remote-as 65001
   neighbor 100.64.10.64 description dc1-spine1_Ethernet9
   neighbor 100.64.11.1 peer group EVPN-OVERLAY-PEERS
   neighbor 100.64.11.1 remote-as 65001
   neighbor 100.64.11.1 description dc1-spine1
   neighbor 100.64.11.1 route-map RM-EVPN-FILTER-AS65001 out
   redistribute connected route-map RM-CONN-2-BGP
   !
   vlan 10
      rd 100.64.11.19:110010
      route-target both 65000:110010
      redistribute learned
   !
   vlan 20
      rd 100.64.11.19:110020
      route-target both 65000:110020
      redistribute learned
   !
   vlan 30
      rd 100.64.11.19:110030
      route-target both 65000:110030
      redistribute learned
   !
   vlan 110
      rd 100.64.11.19:120110
      route-target both 65000:120110
      redistribute learned
   !
   vlan 120
      rd 100.64.11.19:120120
      route-target both 65000:120120
      redistribute learned
   !
   vlan 130
      rd 100.64.11.19:120130
      route-target both 65000:120130
      redistribute learned
   !
   address-family evpn
      host-flap detection window 180 threshold 15
      neighbor EVPN-OVERLAY-PEERS activate
   !
   address-family rt-membership
      neighbor EVPN-OVERLAY-PEERS activate
   !
   address-family ipv4
      no neighbor EVPN-OVERLAY-PEERS activate
      neighbor IPv4-UNDERLAY-PEERS activate
```

# BFD

## Router BFD

### Router BFD Multihop Summary

| Interval | Minimum RX | Multiplier |
| -------- | ---------- | ---------- |
| 12000 | 12000 | 3 |

### Router BFD Device Configuration

```eos
!
router bfd
   multihop interval 12000 min-rx 12000 multiplier 3
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

## Prefix-lists

### Prefix-lists Summary

#### PL-LOOPBACKS-EVPN-OVERLAY

| Sequence | Action |
| -------- | ------ |
| 10 | permit 100.64.11.0/24 eq 32 |
| 20 | permit 100.64.12.0/24 eq 32 |

### Prefix-lists Device Configuration

```eos
!
ip prefix-list PL-LOOPBACKS-EVPN-OVERLAY
   seq 10 permit 100.64.11.0/24 eq 32
   seq 20 permit 100.64.12.0/24 eq 32
```

## Route-maps

### Route-maps Summary

#### RM-CONN-2-BGP

| Sequence | Type | Match and/or Set |
| -------- | ---- | ---------------- |
| 10 | permit | match ip address prefix-list PL-LOOPBACKS-EVPN-OVERLAY |

#### RM-EVPN-FILTER-AS65001

| Sequence | Type | Match and/or Set |
| -------- | ---- | ---------------- |
| 10 | deny | match as 65001 |

### Route-maps Device Configuration

```eos
!
route-map RM-CONN-2-BGP permit 10
   match ip address prefix-list PL-LOOPBACKS-EVPN-OVERLAY
!
route-map RM-EVPN-FILTER-AS65001 deny 10
   match as 65001
!
route-map RM-EVPN-FILTER-AS65001 permit 20
```

# ACL

# VRF Instances

## VRF Instances Summary

| VRF Name | IP Routing |
| -------- | ---------- |
| MGMT | disabled |

## VRF Instances Device Configuration

```eos
!
vrf instance MGMT
```

# Quality Of Service
