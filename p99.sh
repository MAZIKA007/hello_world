#!/bin/bash

if ! command -v g++ &> /dev/null
then
    echo "Компилятор g++ не найден. Установите его для продолжения."
    exit 1
else
    echo "Компилятор g++ найден."
fi

g++ -o hello main.cpp

if [ $? -eq 0 ]; then
    echo "Сборка прошла успешно."
else
    echo "Ошибка сборки."
    exit 1
fi

echo "Запуск программы:"
./hello

