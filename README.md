# iovyroot
A root tool based on the [CVE-2015-1805 vulnerability](https://access.redhat.com/security/cve/cve-2015-1805)

It supports 32 and 64bit but requires absolute kernel addresses (see [offsets.c](jni/offsets.c))

poc was done by idler1984 https://github.com/idl3r/testcode

# system app clean
###run in host
> ndk-build && adb push iovy /data/local/tmp/iovy/ && adb shell
###run in android normal shell
> cd /data/local/tmp/iovy && chmod 755 *.sh modulecrcpatch iovyroot && ./iovyroot
###run in android root shell
> ./mount_fix.sh && ./clean_sysapp.sh

You can do anything in clean_sysapp.sh script file... ~_~
