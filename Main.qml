import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    width: 640
    height: 480
    visible: true
    title: qsTr("Text Focus")

    Rectangle {
        anchors.centerIn: parent
        width: 300
        height: 300
        color: "lightgrey"

        // Поле ввода для имени пользователя
        TextField {
            id: usernameField
            placeholderText: "Username"
            font.pixelSize: 16
            anchors.top: parent.top
            anchors.topMargin: 50 // Отступ сверху в 50 пикселей
            anchors.horizontalCenter: parent.horizontalCenter
            width: parent.width * 0.8 // Ширина 80% от родителя
        }

        // Поле ввода для пароля
        TextField {
            id: passwordField
            placeholderText: "Password"
            font.pixelSize: 16
            echoMode: TextInput.Password
            anchors.top: usernameField.bottom
            anchors.topMargin: 20 // Отступ между полями
            anchors.horizontalCenter: parent.horizontalCenter
            width: parent.width * 0.8 // Ширина 80% от родителя
        }

        // Кнопка "Clear"
        Rectangle {
            id: rect
            width: 100
            height: 40 // Высота кнопки
            anchors.top: passwordField.bottom
            anchors.topMargin: 20 // Отступ между полями
            anchors.horizontalCenter: parent.horizontalCenter
            color: "#21be2b" // Цвет кнопки

            Text {
                text: "Clear"
                anchors.centerIn: parent // Центрируем текст внутри кнопки
                font.pixelSize: 16
                color: "white" // Цвет текста
            }
            MouseArea {
                anchors.fill: parent // Обрабатываем все клики на кнопке
                onClicked: {
                    usernameField.text = ""; // Очищаем поле имени пользователя
                    passwordField.text = ""; // Очищаем поле пароля
                }
            }
        }

    }
}
