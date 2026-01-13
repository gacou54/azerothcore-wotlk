date=$(date '+%Y-%m-%d')
backup_dir=backup_$date

mkdir -p $backup_dir

mysqldump -h 127.0.0.1 -u root -p acore_world > $backup_dir/acore_world.sql
mysqldump -h 127.0.0.1 -u root -p acore_characters > $backup_dir/acore_characters.sql
mysqldump -h 127.0.0.1 -u root -p acore_auth > $backup_dir/acore_auth.sql

