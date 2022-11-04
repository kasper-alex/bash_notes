#!/bin/bash

DEVICE="/dev/sda"; MOUNT_POINT=$(df | grep "${DEVICE}" | awk '{print $6}');FS_TYPE=$(df -T| grep "${DEVICE}" | awk '{print $2}') ; blkid -o export "${DEVICE}" | grep "^UUID" | awk -v MOUNT_POINT="${MOUNT_POINT}" -v FS_TYPE="${FS_TYPE}" '{print $1 " " MOUNT_POINT " " FS_TYPE " defaults,noatime 0 2"}' >> /etc/fstab
