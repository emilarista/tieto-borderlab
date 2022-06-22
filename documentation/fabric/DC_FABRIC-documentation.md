# DC_FABRIC

# Table of Contents

- [Fabric Switches and Management IP](#fabric-switches-and-management-ip)
  - [Fabric Switches with inband Management IP](#fabric-switches-with-inband-management-ip)
- [Fabric Topology](#fabric-topology)
- [Fabric IP Allocation](#fabric-ip-allocation)
  - [Fabric Point-To-Point Links](#fabric-point-to-point-links)
  - [Point-To-Point Links Node Allocation](#point-to-point-links-node-allocation)
  - [Loopback Interfaces (BGP EVPN Peering)](#loopback-interfaces-bgp-evpn-peering)
  - [Loopback0 Interfaces Node Allocation](#loopback0-interfaces-node-allocation)
  - [VTEP Loopback VXLAN Tunnel Source Interfaces (VTEPs Only)](#vtep-loopback-vxlan-tunnel-source-interfaces-vteps-only)
  - [VTEP Loopback Node allocation](#vtep-loopback-node-allocation)

# Fabric Switches and Management IP

| POD | Type | Node | Management IP | Platform | Provisioned in CloudVision |
| --- | ---- | ---- | ------------- | -------- | -------------------------- |
| DC_FABRIC | l3leaf | dc1-bleaf1a | 10.83.31.237/22 | vEOS-LAB | Provisioned |
| DC_FABRIC | l3leaf | dc1-bleaf1b | 10.83.31.238/22 | vEOS-LAB | Provisioned |
| DC_FABRIC | l3leaf | dc1-cleaf1 | 10.83.31.245/22 | vEOS-LAB | Provisioned |
| DC_FABRIC | l3leaf | dc1-sleaf1a | 10.83.31.243/22 | vEOS-LAB | Provisioned |
| DC_FABRIC | l3leaf | dc1-sleaf1b | 10.83.31.244/22 | vEOS-LAB | Provisioned |
| DC_FABRIC | spine | dc1-spine1 | 10.83.31.241/22 | vEOS-LAB | Provisioned |
| DC_FABRIC | l3leaf | dc2-bleaf1a | 10.83.31.239/22 | vEOS-LAB | Provisioned |
| DC_FABRIC | l3leaf | dc2-bleaf1b | 10.83.31.240/22 | vEOS-LAB | Provisioned |
| DC_FABRIC | l3leaf | dc2-sleaf1a | 10.83.31.246/22 | vEOS-LAB | Provisioned |
| DC_FABRIC | l3leaf | dc2-sleaf1b | 10.83.31.247/22 | vEOS-LAB | Provisioned |
| DC_FABRIC | spine | dc2-spine1 | 10.83.31.242/22 | vEOS-LAB | Provisioned |

> Provision status is based on Ansible inventory declaration and do not represent real status from CloudVision.

## Fabric Switches with inband Management IP
| POD | Type | Node | Management IP | Inband Interface |
| --- | ---- | ---- | ------------- | ---------------- |

# Fabric Topology

| Type | Node | Node Interface | Peer Type | Peer Node | Peer Interface |
| ---- | ---- | -------------- | --------- | ----------| -------------- |
| l3leaf | dc1-bleaf1a | Ethernet1 | spine | dc1-spine1 | Ethernet4 |
| l3leaf | dc1-bleaf1a | Ethernet2 | mlag_peer | dc1-bleaf1b | Ethernet2 |
| l3leaf | dc1-bleaf1a | Ethernet3 | mlag_peer | dc1-bleaf1b | Ethernet3 |
| l3leaf | dc1-bleaf1b | Ethernet1 | spine | dc1-spine1 | Ethernet5 |
| l3leaf | dc1-cleaf1 | Ethernet1 | spine | dc1-spine1 | Ethernet3 |
| l3leaf | dc1-sleaf1a | Ethernet1 | spine | dc1-spine1 | Ethernet1 |
| l3leaf | dc1-sleaf1a | Ethernet2 | mlag_peer | dc1-sleaf1b | Ethernet2 |
| l3leaf | dc1-sleaf1a | Ethernet3 | mlag_peer | dc1-sleaf1b | Ethernet3 |
| l3leaf | dc1-sleaf1b | Ethernet1 | spine | dc1-spine1 | Ethernet2 |
| l3leaf | dc2-bleaf1a | Ethernet1 | spine | dc2-spine1 | Ethernet3 |
| l3leaf | dc2-bleaf1a | Ethernet2 | mlag_peer | dc2-bleaf1b | Ethernet2 |
| l3leaf | dc2-bleaf1a | Ethernet3 | mlag_peer | dc2-bleaf1b | Ethernet3 |
| l3leaf | dc2-bleaf1b | Ethernet1 | spine | dc2-spine1 | Ethernet4 |
| l3leaf | dc2-sleaf1a | Ethernet1 | spine | dc2-spine1 | Ethernet1 |
| l3leaf | dc2-sleaf1a | Ethernet2 | mlag_peer | dc2-sleaf1b | Ethernet2 |
| l3leaf | dc2-sleaf1a | Ethernet3 | mlag_peer | dc2-sleaf1b | Ethernet3 |
| l3leaf | dc2-sleaf1b | Ethernet1 | spine | dc2-spine1 | Ethernet2 |

# Fabric IP Allocation

## Fabric Point-To-Point Links

| Uplink IPv4 Pool | Available Addresses | Assigned addresses | Assigned Address % |
| ---------------- | ------------------- | ------------------ | ------------------ |
| 100.64.5.0/24 | 256 | 0 | 0.0 % |
| 100.64.10.0/24 | 256 | 10 | 3.91 % |
| 100.64.20.0/24 | 256 | 8 | 3.13 % |

## Point-To-Point Links Node Allocation

| Node | Node Interface | Node IP Address | Peer Node | Peer Interface | Peer IP Address |
| ---- | -------------- | --------------- | --------- | -------------- | --------------- |
| dc1-bleaf1a | Ethernet1 | 100.64.10.25/31 | dc1-spine1 | Ethernet4 | 100.64.10.24/31 |
| dc1-bleaf1b | Ethernet1 | 100.64.10.33/31 | dc1-spine1 | Ethernet5 | 100.64.10.32/31 |
| dc1-cleaf1 | Ethernet1 | 100.64.10.17/31 | dc1-spine1 | Ethernet3 | 100.64.10.16/31 |
| dc1-sleaf1a | Ethernet1 | 100.64.10.1/31 | dc1-spine1 | Ethernet1 | 100.64.10.0/31 |
| dc1-sleaf1b | Ethernet1 | 100.64.10.9/31 | dc1-spine1 | Ethernet2 | 100.64.10.8/31 |
| dc2-bleaf1a | Ethernet1 | 100.64.20.25/31 | dc2-spine1 | Ethernet3 | 100.64.20.24/31 |
| dc2-bleaf1b | Ethernet1 | 100.64.20.33/31 | dc2-spine1 | Ethernet4 | 100.64.20.32/31 |
| dc2-sleaf1a | Ethernet1 | 100.64.20.1/31 | dc2-spine1 | Ethernet1 | 100.64.20.0/31 |
| dc2-sleaf1b | Ethernet1 | 100.64.20.9/31 | dc2-spine1 | Ethernet2 | 100.64.20.8/31 |

## Loopback Interfaces (BGP EVPN Peering)

| Loopback Pool | Available Addresses | Assigned addresses | Assigned Address % |
| ------------- | ------------------- | ------------------ | ------------------ |
| 100.64.11.0/24 | 256 | 6 | 2.35 % |
| 100.64.21.0/24 | 256 | 5 | 1.96 % |

## Loopback0 Interfaces Node Allocation

| POD | Node | Loopback0 |
| --- | ---- | --------- |
| DC_FABRIC | dc1-bleaf1a | 100.64.11.14/32 |
| DC_FABRIC | dc1-bleaf1b | 100.64.11.15/32 |
| DC_FABRIC | dc1-cleaf1 | 100.64.11.13/32 |
| DC_FABRIC | dc1-sleaf1a | 100.64.11.11/32 |
| DC_FABRIC | dc1-sleaf1b | 100.64.11.12/32 |
| DC_FABRIC | dc1-spine1 | 100.64.11.1/32 |
| DC_FABRIC | dc2-bleaf1a | 100.64.21.14/32 |
| DC_FABRIC | dc2-bleaf1b | 100.64.21.15/32 |
| DC_FABRIC | dc2-sleaf1a | 100.64.21.11/32 |
| DC_FABRIC | dc2-sleaf1b | 100.64.21.12/32 |
| DC_FABRIC | dc2-spine1 | 100.64.21.1/32 |

## VTEP Loopback VXLAN Tunnel Source Interfaces (VTEPs Only)

| VTEP Loopback Pool | Available Addresses | Assigned addresses | Assigned Address % |
| --------------------- | ------------------- | ------------------ | ------------------ |
| 100.64.12.0/24 | 256 | 5 | 1.96 % |
| 100.64.22.0/24 | 256 | 4 | 1.57 % |

## VTEP Loopback Node allocation

| POD | Node | Loopback1 |
| --- | ---- | --------- |
| DC_FABRIC | dc1-bleaf1a | 100.64.12.14/32 |
| DC_FABRIC | dc1-bleaf1b | 100.64.12.14/32 |
| DC_FABRIC | dc1-cleaf1 | 100.64.12.13/32 |
| DC_FABRIC | dc1-sleaf1a | 100.64.12.11/32 |
| DC_FABRIC | dc1-sleaf1b | 100.64.12.11/32 |
| DC_FABRIC | dc2-bleaf1a | 100.64.22.14/32 |
| DC_FABRIC | dc2-bleaf1b | 100.64.22.14/32 |
| DC_FABRIC | dc2-sleaf1a | 100.64.22.11/32 |
| DC_FABRIC | dc2-sleaf1b | 100.64.22.11/32 |
