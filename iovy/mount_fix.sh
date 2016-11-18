#!/system/bin/sh

if [ ! -f /data/local/tmp/iovy/wp_mod.ko ]; then
	echo "Error patching kernel module. File not found."
	exit 1
fi

if [ -f /data/local/tmp/iovy/modulecrcpatch ]; then
	for f in /system/lib/modules/*.ko; do
		/data/local/tmp/iovy/modulecrcpatch $f /data/local/tmp/iovy/wp_mod.ko
	done
fi

insmod /data/local/tmp/iovy/wp_mod.ko
mount -o remount,rw /system
cp /data/local/tmp/iovy/wp_mod.ko /system/lib/modules/wp_mod.ko
chmod 644 /system/lib/modules/wp_mod.ko

echo 'Mount fix done...'
