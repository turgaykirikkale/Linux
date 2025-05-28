# Disk and Storage Management in Linux


LINUX ==> VOLUME 
## Introduction to Disk and Storage Management
Managing disks and storage efficiently is crucial for system performance and stability. Linux provides various commands to monitor, partition, format, mount, and manage disk storage.

## Index of Commands Covered

### Viewing Disk Information
- `lsblk` – Display block devices (blocks that are attached to the instance ) 
- `fdisk -l` – List disk partitions
- `blkid` – Show UUIDs of devices
- `df -h` – Check disk space usage
- `du -sh /path` – Show size of a directory

### Partition Management
- `fdisk /dev/sdX` – Create and manage partitions
- `parted /dev/sdX` – Alternative to `fdisk` for GPT disks
- `mkfs.ext4 /dev/sdX1` – Format a partition as ext4
- `mkfs.xfs /dev/sdX1` – Format a partition as XFS

### Mounting and Unmounting
- `mount /dev/sdX1 /mnt` – Mount a partition
- `umount /mnt` – Unmount a partition
- `mount -o remount,rw /mnt` – Remount a partition as read-write

### Logical Volume Management (LVM)
- `pvcreate /dev/sdX` – Create a physical volume
- `vgcreate vg_name /dev/sdX` – Create a volume group
- `lvcreate -L 10G -n lv_name vg_name` – Create a logical volume
- `mkfs.ext4 /dev/vg_name/lv_name` – Format an LVM partition
- `mount /dev/vg_name/lv_name /mnt` – Mount an LVM partition

### Swap Management
- `mkswap /dev/sdX` – Create a swap partition
- `swapon /dev/sdX` – Enable swap space
- `swapoff /dev/sdX` – Disable swap space

## Viewing Disk Information
### Using `lsblk`
List all block devices:
```bash
lsblk
```
### Using `fdisk`
View partition details:
```bash
fdisk -l
```
### Using `df`
Check available disk space:
```bash
df -h
```
### Using `du`
Find the size of a directory:
```bash
du -sh /var/log
```

## Partition Management
### Creating a Partition with `fdisk`
```bash
fdisk /dev/sdX
```
Follow the interactive prompts to create a partition.

### Formatting a Partition
Format as ext4:
```bash
mkfs.ext4 /dev/sdX1
```
Format as XFS:
```bash
mkfs.xfs /dev/sdX1
```

## Mounting and Unmounting
### Mount a Partition
```bash
mount /dev/sdX1 /mnt
```
### Unmount a Partition
```bash
umount /mnt
```
### Remount a Partition
```bash
mount -o remount,rw /mnt
```

## LVM Management
### Create a Physical Volume
```bash
pvcreate /dev/sdX
```
### Create a Volume Group
```bash
vgcreate vg_name /dev/sdX
```
### Create a Logical Volume
```bash
lvcreate -L 10G -n lv_name vg_name
```
### Format and Mount the Logical Volume
```bash
mkfs.ext4 /dev/vg_name/lv_name
mount /dev/vg_name/lv_name /mnt
```

## Swap Management
### Create a Swap Partition
```bash
mkswap /dev/sdX
```
### Enable Swap
```bash
swapon /dev/sdX
```
### Disable Swap
```bash
swapoff /dev/sdX
```