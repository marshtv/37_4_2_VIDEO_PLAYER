import QtQuick
import QtQuick.Window
import QtQuick.Controls
import QtQuick.Layouts

Window {
    id: mainWindow
    width: 1024
    height: 768
    visible: true
    title: qsTr("Video Player")

    ColumnLayout {
        Rectangle {
            id: playerFrame
            width: 640
            height: 480
            border.color: "black"
            border.width: 3
            radius: 5
        }

        Frame {
            RowLayout {
                Button {
                    id: buttonPlay
                    text: qsTr("▶️")
                    onClicked: model.submit()
                }

                Button {
                    id: buttonPause
                    text: qsTr("⏸️")
                    onClicked: model.submit()
                }

                Button {
                    id: buttonStop
                    text: qsTr("⏹")
                    onClicked: model.submit()
                }

                Button {
                    id: buttonRewind
                    text: qsTr("⏪️")
                    onClicked: model.submit()
                }

                Button {
                    id: buttonForward
                    text: qsTr("⏩️")
                    onClicked: model.submit()
                }

                ProgressBar {
                    id: progressBar_1
                    width: 300
                }
            }
        }
    }
}
