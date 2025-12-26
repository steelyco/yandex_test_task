#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Введите 2 аргумента: путь и количество дней"
    exit 1
fi

log="$1"
days="$2"

if [ ! -d "$log" ]; then
    echo "Директория не существует"
    exit 1
fi

if ! [[ "$days" =~ ^[0-9]+$ ]]; then
    echo "Ошибка, количество дней должно быть числом."
    exit 1
fi

echo "Файлы для удаления:"
find "$log" -name "*.log" -type f -mtime +"$((days-1))"

read -p "Удалить эти файлы? (y/n): " answer
if [ "$answer" = "y" ]; then
    find "$log" -name "*.log" -type f -mtime +"$((days-1))" -delete
    echo "Файлы удалены."
fi
