# Dox
- https://www.freebsd.org/doc/en_US.ISO8859-1/books/porters-handbook/quick-porting.html

# Test
- vagrant up
- vagrant ssh

# Steps
- `sudo portsnap fetch extract`
- `sudo su`
- `echo DEVELOPER=yes >> /etc/make.conf`
- Updape the `Makefile`
- `sudo make makesum`
	- if you see `Not validating first entry in CATEGORIES due to being outside of PORTSDIR`
	ignore this is normal in DEV mode
- `make stage`
- kldload linux64
- pkg install emulators/linux_base-c7










Some programs need linprocfs mounted on /compat/linux/proc.  Add the
following line to /etc/fstab:

linprocfs   /compat/linux/proc	linprocfs	rw	0	0

Then run "mount /compat/linux/proc".

Some programs need linsysfs mounted on /compat/linux/sys.  Add the
following line to /etc/fstab:

linsysfs    /compat/linux/sys	linsysfs	rw	0	0

Then run "mount /compat/linux/sys".

Some programs need tmpfs mounted on /compat/linux/dev/shm.  Add the
following line to /etc/fstab:

tmpfs    /compat/linux/dev/shm	tmpfs	rw,mode=1777	0	0

Then run "mount /compat/linux/dev/shm".
