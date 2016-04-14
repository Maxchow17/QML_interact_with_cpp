import QtQuick 2.3
import QtQuick.Window 2.2
import "../script/mainScript.js" as MainScript
Item{
    width: 410
    height: 200
Rectangle {
    id:tips_rect
    width: 410
    height: 200
    color: "#ffffff"
    opacity: 0.8
    z: 3
    property string tipsText: "tips"
    Behavior on y {NumberAnimation {duration: 200;easing.type: Easing.InOutQuad}}

    Text {
        id: tips_text
        x: 136
        y: 84
        width: 139
        height: 33
        text: tips_rect.tipsText
        font.bold: true
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 15
    }

    Image {
        id: closeImage
        anchors.right: parent.right
        anchors.rightMargin: 8
        anchors.left: parent.left
        anchors.leftMargin: 380
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 172
        anchors.top: parent.top
        anchors.topMargin: 8
        source: "../images/close.png"
    }

    MouseArea {
        id: closeTips
        anchors.fill:closeImage
        onClicked: {
            MainScript.hide_tips_rect();
        }
    }
}
}
