#!/bin/bash

TARGET_FILE="/etc/cron.d/test_cron"

echo "Создание конфигурационного файла для cron.."

#Создаем файл и записываем туда задачу: Запускать каждые 5 минут от имени root. Дописывать текущую дату и время в файл runtime.txt
cat << 'EOF' > "$TARGET_FILE"
*/5 * * * * root date >> /tmp/runtime.txt
EOF

#Устанавливаем права 644
chmod 644 "$TARGET_FILE"
echo "Права доступа обновлены (права 644)"
