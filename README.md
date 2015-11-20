# zerofree
zeroes out free blocks on /home

This is not a script designed to provide high security against forensics based attacks, but will overwrite
previous data that was once occupied by now closed deleted files, as well as any other garbage data on the disk.

This has the benefit of improved compression ratio of partition images, as low entropy data can be compressed to a
much smaller size. It is designed to be fairly fast, and can be scheduled to run at regular intervals in order to
keep the /home partition relatively clean.
