# QtAutoTools

# Программа для удобного использования утилит Qt

<img src="https://habrastorage.org/webt/dc/iq/f7/dciqf78gir_jddxhwgy6b7bbyuy.png" />

Возможности программы:

- **Создание деплоев(развертываний)**.  Вкладка windeployqt, необходимо выбрать папку с exe файлом, далее установить нужны опции и флаги и нажать кнопку развернуть, после чего программа автоматически все сделает.

- **Создание инсталяторов** Необходимо указать папку для создания установщка, настроить свойста config.xml, при необходиомсти можно выбрать создания онлайн установщика, тогда нужно будет указать ссылки на репозитории. Далее необходимо настроить минимум один пакет, указать у него название и имя вендора, выбрать папку с содержанием пакета. Далее если выбран онлайн установщик, можно выбрать создание разных типов устноавщиков. Репозиторий нужен для онлайн устновщика, созданную папку необхоимо положить на сервер. При создании установщика  обязательно должен стоять QtInstallerFramework версии 3.1.

- **Создание файла qmldir**. Для автоматического создания и заполнения qmldir, необходимо выбрать папку с файлами модуля, программа выберет все *.qml, *.js, *.dll, *.so и *.h файлы. После этого необходимо выбрать модификаторы и установить версию для каждого файлы. Кнопка "Создать" запишет все в qmldir, имя модуля будет выбрано в соответствии с именем папки, выбранной ранее. При желании можно создать файл .qmltypes для описания и включить поддержку дизайне Qt Quick.

- **Создание файлов перевода**. Необходимо выбрать папку с профайлом программы и желаемые языки, и нажать кнопку "Создать". Также можно запустить Qt Linguist, если файлы перевода были созданы в текущей сессии программа сразу запуститься с созданными файлами перевода.


Настройки: Для работы программы необходимо указать папку с Qt, папку до компилятора и папку до компилятора в Tool. 
