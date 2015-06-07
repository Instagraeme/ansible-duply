---
backup_name: NAME_OF_BACKUP
gpg_password: PASSWORD_TO_ENCRYPT_BACKUP

s3_target: ADDRESS_OF_S3_BUCKET
s3_user: AWS_ACCESS_KEY_ID
s3_secret: AWS_SECRET_ACCESS_KEY
source_dir: /
maximum_age: 6M

exclude: |+
  - /dev
  - /lost+found
  - /media
  - /mnt
  - /proc
  - /run
  - /selinux
  - /sys
  - /tmp
  - /var/cache/*/*
  - /var/log
  - /var/run
  - /var/tmp
