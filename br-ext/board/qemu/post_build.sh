#!/bin/sh
cat >>${TARGET_DIR}/etc/mdev.conf <<'__EOF__'

# OP-TEE
tee0		root:tee 660 @chown root:tee $MDEV && chmod 660 $MDEV
teepriv0	root:tee 660 @chown root:tee $MDEV && chmod 660 $MDEV
__EOF__
