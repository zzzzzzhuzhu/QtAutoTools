# QtAutoTools

Программа для удобного использования утилит Qt

Возможности программы:

1.Создание деплоев(развертываний) 
  Вкладка windeployqt, необходимо выбрать папку с exe файлом, далее можно установить нужны опции и флаги и нажать кнопку развернуть,
  после чего программа автоматически все сделает
  
2. Создание инсталяторов
   Пока не реализовано
  
3. Создание файла qmldir 
  Для автоматического создания и заполнения qmldir, необходимо выбрать папку с qml и js файлами, установить желаемую версию и нажать 
  кнопку "Создать", после чего программа отберет все qml и js файлы и запишет в qmldir, имя модуля будет выбрано в соотвествии с именем
  папки, выбранной ранее

4. Создание файла .qmltypes для описания модуля
  Необходимо выбрать папку с qml и js файлами, также можно сделать автоматическую запись в qmldir (если он имеется в папке) и нажать  
  кнопку "Создать".
  
5. Создание файлов перевода
   Необходимо выбрать папку с профайлом программы и желаемые языки, и нажать кнопку "Создать". Также можно запустить Qt Linguist, если 
   перевода были созданые в текущей сессии программа сразу запуститься с созданными файлами перевода. 
   
Настройки:
  Для работы программы необходимо указать папку с Qt, папку до компилятора и папку до компилятора в Tool.