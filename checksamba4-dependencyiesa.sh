#
#  every configure dep make run take more then 4h  on an RPi model B
#  so we run that at background .
#
# After that we do check the log
#
# you can run this script with :  nohup ./checksamba4-dependencyiesa.sh &
#
cd /srv/PROJ/samba4.1/BUILD/4.1.3/master

CPPFLAGS="-Ofast -mfpu=vfp -march=armv6zk -mtune=arm1176jzf-s" ;CFLAGS="-Ofast -mfpu=vfp -march=armv6zk -mtune=arm1176jzf-s"; ./configure --prefix=/usr \
        --sysconfdir=/etc \
        --localstatedir=/var/run \
        --enable-fhs >/makedep.log
