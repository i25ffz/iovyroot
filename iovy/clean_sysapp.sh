#!/system/bin/sh

rm -fR /data/data/com.google.android.apps.photos
rm -fR /system/app/Photos
pm uninstall com.google.android.apps.photos

rm -fR /data/data/com.google.android.apps.plus
rm -fR /system/app/PlusOne
pm uninstall com.google.android.apps.plus

rm -fR /data/data/com.google.android.apps.docs.editors.docs
rm -fR /system/app/EditorsDocs
pm uninstall com.google.android.apps.docs.editors.docs

rm -fR /data/data/com.google.android.apps.docs
rm -fR /system/app/Drive
pm uninstall com.google.android.apps.docs

rm -fR /data/data/com.google.android.talk
rm -fR /system/app/Hangouts
pm uninstall com.google.android.talk

rm -fR /data/data/com.mobisystems.fileman
rm -fR /system/priv-app/filecommander
pm uninstall com.mobisystems.fileman

rm -fR /data/data/com.android.email
rm -fR /system/priv-app/SemcEmail
pm uninstall com.android.email

echo "Uninstall system app ok..."
