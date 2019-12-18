import QtQuick 2.12
import QtQuick.Controls 2.5
import QtGraphicalEffects 1.0

import Components 1.0
import Components.Controls 1.0
import AutoTools 1.0

Item {
    Label {
        x: 20; y: 20
        font.pixelSize: 18
        font.weight: Font.Bold
        text: "Qt Installer Framework"
    }
    FInstaller {
        id: _finstaller
        onFinished: {
            _busyDialog.close()
        }
    }
    BusiDialog {
        id: _busyDialog
    }

    Flickable {
        x: 20; y: 50
        width: parent.width-40; height: parent.height-y
        contentHeight: _content.height+20
        interactive: contentHeight > height
        clip: true
        Column {
            id: _content
            spacing: 20
            LabelFieldRow {
                label: qsTr("Папка установки")
                mode: LabelFieldRow.Mode.Folder
            }
            CustomButton {
                text: qsTr("Настройка config файла")
                onClicked: _configDialog.open()
            }
            Row {
                spacing: 20
                Label {
                    height: 30
                    verticalAlignment: Text.AlignVCenter
                    text: qsTr("Список компонентов")
                }
                CustomButton {
                    width: 30; height: 30; radius: 15
                    text: qsTr("+")
                    onClicked: {
                        var component = {
                            "name": String(Math.random()*100),
                            "description": "",
                            "version": "1.0",
                            "dateRelease": "",
                            "vendor": "org.myapp.example",
                            "virtual": false,
                            "license": "",
                            "script": "",
                            "pages": "",
                            "depends": "",
                            "sort": "",
                            "updateText": "",
                            "preDefault": false,
                            "forsed": false,
                            "replaces": ""
                        }
                        _packagesModel.append(component)
                    }
                }
            }
            ListView {
                width: parent.width
                height: contentHeight
                interactive: false
                spacing: -1
                model: _packagesModel
                delegate: Item {
                    width: parent.width; height: 40
                    Row {
                        x: 20
                        width: parent.width-20; height: 40
                        spacing: 10
                        Label {
                            width: 100; height: 40
                            verticalAlignment: Text.AlignVCenter
                            elide: Text.ElideMiddle
                            text: name
                        }
                        Label {
                            width: parent.width/3; height: 40
                            verticalAlignment: Text.AlignVCenter
                            elide: Text.ElideMiddle
                            text: vendor
                        }
                        Label {
                            width: 40; height: 40
                            verticalAlignment: Text.AlignVCenter
                            text: version
                        }
                        Item {
                            width: 40; height: 40
                            Image {
                                x: 12; y: 8
                                width: 25; height: 25
                                source: "qrc:/icon/folder.svg"
                                //layer.enabled: true
                                layer.effect: ColorOverlay {
                                    color: "#52ABFF"
                                }
                                MouseArea {
                                    width: parent.width; height: parent.height
                                    onPressed: parent.layer.enabled = true
                                    onReleased: parent.layer.enabled = false
                                    onClicked: {
                                        _packageDialog.open()
                                    }
                                }
                            }
                        }
                    }
                    Item {
                        x: parent.width - width-10; y: 0
                        width: 21; height: 40
                        Image {
                            x: 0; y: 12
                            width: 21; height: 21
                            visible: _packagesModel.count > 1
                            source: "qrc:/icon/exit-black.svg"
                            MouseArea {
                                width: parent.width; height: parent.height
                                onClicked: {
                                    _packagesModel.remove(index)
                                }
                            }
                        }
                    }


                    Rectangle {
                        width: parent.width; height: 1
                        color: "#C4C4C4"
                    }
                    Rectangle {
                        x: 0; y: 39
                        width: parent.width; height: 1
                        color: "#C4C4C4"
                    }
                    PackageDialog {
                        id: _packageDialog
                    }

                }
            }
            LabelCheckBox {
                label: qsTr("Создать офлайн установщик")
            }
            LabelCheckBox {
                label: qsTr("Создать онлайн установщик")
            }
            LabelCheckBox {
                label: qsTr("Создать репозиторий")
            }
            CustomButton {
                text: qsTr("Выполнить")
            }


        }
    }

    ConfigDialog {
        id: _configDialog
    }

    ListModel {
        id: _packagesModel
        ListElement {
            name: "MyApp"
            description: ""
            version: "1.0"
            dateRelease: ""
            vendor: "org.myapp.example"
            virtual: false
            license: ""
            script: ""
            pages: ""
            depends: ""
            sort: ""
            updateText: ""
            preDefault: false
            forsed: false
            replaces: ""
        }
    }
}
