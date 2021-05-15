
# Windows 10 migration
# From: /dev/sda
#   To: /dev/nvme0n1

# -----------------------------
# 0. Prepare
# 0.1 Make sure page file (which is used as RAM) is in driver 'C'.
# -----------------------------


# -----------------------------
# 1. show the detail of the GPT disk layout.
# -----------------------------
fdisk -l /dev/sda

# ...
# Disklabel type: gpt
# Disk identifier: 1DFB19B5-1B5B-46DA-913F-074E2088AEF1
#
# Device           Start       End   Sectors  Size Type
# /dev/nvme0n1p1    2048   1085439   1083392  529M Windows recovery environment
# /dev/nvme0n1p2 1085440   1290239    204800  100M EFI System
# /dev/nvme0n1p3 1290240   1323007     32768   16M Microsoft reserved
# /dev/nvme0n1p4 1323008 185323519 184000512 87.8G Microsoft basic data



# -----------------------------
# 2. make sure that /dev/nvme0n1 has the same layout.
# -----------------------------
fdisk /dev/nvme0n1


# -----------------------------
# 3. change disk GUID
#    GUID(/dev/nvme0n1) = GUID(/dev/sda)
#
#    Windows will boot failed when disk identifier mismatch.
# 3.1 PMBR not copy.
# -----------------------------
