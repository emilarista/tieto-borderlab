# MPLS_CORE

# Table of Contents

- [Fabric Switches and Management IP](#fabric-switches-and-management-ip)
  - [Fabric Switches with inband Management IP](#fabric-switches-with-inband-management-ip)
- [Fabric Topology](#fabric-topology)
- [Fabric IP Allocation](#fabric-ip-allocation)
  - [Fabric Point-To-Point Links](#fabric-point-to-point-links)
  - [Point-To-Point Links Node Allocation](#point-to-point-links-node-allocation)
  - [Loopback Interfaces (BGP EVPN Peering)](#loopback-interfaces-bgp-evpn-peering)
  - [Loopback0 Interfaces Node Allocation](#loopback0-interfaces-node-allocation)
  - [ISIS CLNS interfaces](#isis-clns-interfaces)
  - [VTEP Loopback VXLAN Tunnel Source Interfaces (VTEPs Only)](#vtep-loopback-vxlan-tunnel-source-interfaces-vteps-only)
  - [VTEP Loopback Node allocation](#vtep-loopback-node-allocation)

# Fabric Switches and Management IP

| POD | Type | Node | Management IP | Platform | Provisioned in CloudVision |
| --- | ---- | ---- | ------------- | -------- | -------------------------- |
| MPLS_CORE | rr | bb1 | 10.83.31.235/22 | vEOS-LAB | Provisioned |
| MPLS_CORE | rr | bb2 | 10.83.31.236/22 | vEOS-LAB | Provisioned |
| MPLS_CORE | pe | pe1 | 10.83.31.233/22 | vEOS-Lab | Provisioned |
| MPLS_CORE | pe | pe2 | 10.83.31.234/22 | vEOS-Lab | Provisioned |

> Provision status is based on Ansible inventory declaration and do not represent real status from CloudVision.

## Fabric Switches with inband Management IP
| POD | Type | Node | Management IP | Inband Interface |
| --- | ---- | ---- | ------------- | ---------------- |

# Fabric Topology

| Type | Node | Node Interface | Peer Type | Peer Node | Peer Interface |
| ---- | ---- | -------------- | --------- | ----------| -------------- |
| rr | bb1 | Ethernet4 | pe | pe1 | Ethernet1 |
| rr | bb2 | Ethernet4 | pe | pe2 | Ethernet1 |

# Fabric IP Allocation

## Fabric Point-To-Point Links

| Uplink IPv4 Pool | Available Addresses | Assigned addresses | Assigned Address % |
| ---------------- | ------------------- | ------------------ | ------------------ |

## Point-To-Point Links Node Allocation

| Node | Node Interface | Node IP Address | Peer Node | Peer Interface | Peer IP Address |
| ---- | -------------- | --------------- | --------- | -------------- | --------------- |
| bb1 | Ethernet4 | 100.70.10.0/31 | pe1 | Ethernet1 | 100.70.10.1/31 |
| bb2 | Ethernet4 | 100.70.10.2/31 | pe2 | Ethernet1 | 100.70.10.3/31 |

## Loopback Interfaces (BGP EVPN Peering)

| Loopback Pool | Available Addresses | Assigned addresses | Assigned Address % |
| ------------- | ------------------- | ------------------ | ------------------ |
| 100.70.0.0/24 | 256 | 4 | 1.57 % |

## Loopback0 Interfaces Node Allocation

| POD | Node | Loopback0 |
| --- | ---- | --------- |
| MPLS_CORE | bb1 | 100.70.0.1/32 |
| MPLS_CORE | bb2 | 100.70.0.2/32 |
| MPLS_CORE | pe1 | 100.70.0.11/32 |
| MPLS_CORE | pe2 | 100.70.0.12/32 |

## ISIS CLNS interfaces

| POD | Node | CLNS Address |
| --- | ---- | ------------ |
| MPLS_CORE | bb1 | 49.0001.0000.0011.0001.00 |
| MPLS_CORE | bb2 | 49.0001.0000.0011.0002.00 |
| MPLS_CORE | pe1 | 49.0001.0000.0010.0001.00 |
| MPLS_CORE | pe2 | 49.0001.0000.0010.0002.00 |

## VTEP Loopback VXLAN Tunnel Source Interfaces (VTEPs Only)

| VTEP Loopback Pool | Available Addresses | Assigned addresses | Assigned Address % |
| --------------------- | ------------------- | ------------------ | ------------------ |

## VTEP Loopback Node allocation

| POD | Node | Loopback1 |
| --- | ---- | --------- |
