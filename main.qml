import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        id: rect
        width: 200
        height: 200
        color: "red"
        clip: true
        anchors.centerIn: parent

        Text {
            id: text
            text: qsTr("SCALE")
            font.pointSize: 66
            anchors.centerIn: parent
            rotation: -45
        }
    }

    SequentialAnimation {
        id: anim
        running: true
        loops: Animation.Infinite

        ScaleAnimator {
            id: animShrink
            target: rect
            from: 1
            to: 0.5
            duration: 3000
            running: true
        }

        ScaleAnimator {
            id: animGrow
            target: rect
            from: 0.5
            to: 1
            duration: 3000
            running: true
        }
    }
}
