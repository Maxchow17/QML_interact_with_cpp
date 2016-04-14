import QtQuick 2.3
import QtQuick.Window 2.2

import "modules"
import "script/mainScript.js" as MainScript


Window {
    id:mainWin
    visible: true


    //welcome window size
    width:360
    height:240


    //set max size of main window
    maximumWidth: 720
    maximumHeight: 480

    //flagValue for saving initialized mainWin's flags property
    property int  flagValue: 0

    //Animation for mainWin size changing.
    Behavior on width { NumberAnimation { duration: 200; easing.type: Easing.OutQuad } }
    Behavior on height { NumberAnimation { duration: 200; easing.type: Easing.OutQuad } }

    //timer for showing welcome window(4000ms)
    Timer {
           id:welcome_animated_timer
           interval: 4000;
           onTriggered:  {
                //animated.destroy();
                welcome_animated.destroy();
                mainWin.x = mainWin.x - 180;
                mainWin.y = mainWin.y -120;
                mainWin.width = 720;
                mainWin.height = 480;
                mainWin.flags = mainWin.flagValue;

           }
       }


    Component.onCompleted: {
        mainWin.flagValue = mainWin.flags;
        mainWin.flags = Qt.SplashScreen;
        welcome_animated_timer.start();
    }

    //welcome window module
    Welcome{
        id:welcome_animated
        z:3
        anchors.fill: main_rect
    }


    Rectangle {
        id: main_rect
        anchors.fill: parent
        color: "#ffffff"

        //set background image
        Image {
            id: background_image
            anchors.fill: parent
            z: 1
            source: "images/background.jpg"
        }

        Rectangle {
            id: btn1_rect
            x: 76
            y: 130
            width: 125
            height: 34
            radius: 12
            z: 2
            gradient: Gradient {
                GradientStop {
                    id:btn1_g1
                    position: 0.224
                    color: "#ffffff"
                }

                GradientStop {
                    id:btn1_g2
                    position: 1
                    color: "#000000"
                }

                GradientStop {
                    id:btn1_g3
                    position: 0.987
                    color: "#6b7c8a"
                }
            }

            Text {
                id: btn1_text
                anchors.fill: parent
                text: qsTr("show Tips_rect")
                font.bold: true
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                z: 1
                font.pixelSize: 15
            }

            MouseArea {
                id: btn1_area
                anchors.fill: parent
                hoverEnabled: true

                onEntered: {
                    btn1_g1.color = "#000000";
                    btn1_g2.color = "#ffffff";
                    btn1_g3.color = "#6b7c8a";
                    btn1_text.color = "white";
                }

                onExited: {
                    btn1_g1.color = "#ffffff";
                    btn1_g2.color = "#000000";
                    btn1_g3.color = "#6b7c8a";
                    btn1_text.color = "black";

                }

                onClicked: {
                    MainScript.show_tips_rect();
                }

            }
        }
//        DropShadow {
//               id:shadow_1
//               anchors.fill: btn1_rect
//               horizontalOffset: 3
//               verticalOffset: 3
//               z: 1
//               samples: 16
//               color: "#80000000"
//               source: btn1_rect
//        }


        Rectangle {
            id: btn2_rect
            x: 76
            y: 184
            width: 125
            height: 34
            radius: 12
            z: 2
            gradient: Gradient {
                GradientStop {
                    id:btn2_g1
                    position: 0.224
                    color: "#ffffff"
                }

                GradientStop {
                    id:btn2_g2
                    position: 1
                    color: "#000000"
                }

                GradientStop {
                    id:btn2_g3
                    position: 0.987
                    color: "#6b7c8a"
                }
            }
            Text {
                id: btn2_text
                anchors.fill: parent
                text: qsTr("open file dialog")
                font.bold: true
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                z: 1
                font.pixelSize: 15
            }

            MouseArea {
                id: btn2_area
                anchors.fill: parent
                hoverEnabled: true

                onEntered: {
                    btn2_g1.color = "#000000";
                    btn2_g2.color = "#ffffff";
                    btn2_g3.color = "#6b7c8a";
                    btn2_text.color = "white";
                }

                onExited: {
                    btn2_g1.color = "#ffffff";
                    btn2_g2.color = "#000000";
                    btn2_g3.color = "#6b7c8a";
                    btn2_text.color = "black";

                }
                onClicked: {
                    backWorker.openFileDialog();
                }

            }
        }
//        DropShadow {
//               id:shadow_2
//               anchors.fill: btn2_rect
//               horizontalOffset: 3
//               verticalOffset: 3
//               z: 1
//               samples: 16
//               color: "#80000000"
//               source: btn2_rect
//        }

        Rectangle {
            id: btn3_rect
            x: 76
            y: 240
            width: 125
            height: 34
            radius: 12
            z: 2
            gradient: Gradient {
                GradientStop {
                    id:btn3_g1
                    position: 0.224
                    color: "#ffffff"
                }

                GradientStop {
                    id:btn3_g2
                    position: 1
                    color: "#000000"
                }

                GradientStop {
                    id:btn3_g3
                    position: 0.987
                    color: "#6b7c8a"
                }
            }

            Text {
                id: btn3_text
                anchors.fill: parent
                text: qsTr("Button 3")
                font.bold: true
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                z: 1
                font.pixelSize: 15
            }

            MouseArea {
                id: btn3_area
                anchors.fill: parent
                hoverEnabled: true

                onEntered: {
                    btn3_g1.color = "#000000";
                    btn3_g2.color = "#ffffff";
                    btn3_g3.color = "#6b7c8a";
                    btn3_text.color = "white";
                }

                onExited: {
                    btn3_g1.color = "#ffffff";
                    btn3_g2.color = "#000000";
                    btn3_g3.color = "#6b7c8a";
                    btn3_text.color = "black";

                }

                onClicked: {
                    //do someting
                }

            }
        }
//        DropShadow {
//               id:shadow_3
//               anchors.fill: btn3_rect
//               horizontalOffset: 3
//               verticalOffset: 3
//               z: 1
//               samples: 16
//               color: "#80000000"
//               source: btn3_rect
//        }

        Rectangle {
            id: btn4_rect
            x: 76
            y: 300
            width: 125
            height: 34
            radius: 12
            z: 2
            gradient: Gradient {
                GradientStop {
                    id:btn4_g1
                    position: 0.224
                    color: "#ffffff"
                }

                GradientStop {
                    id:btn4_g2
                    position: 1
                    color: "#000000"
                }

                GradientStop {
                    id:btn4_g3
                    position: 0.987
                    color: "#6b7c8a"
                }
            }

            Text {
                id: btn4_text
                anchors.fill: parent
                text: qsTr("exit")
                anchors.rightMargin: 0
                anchors.bottomMargin: 0
                anchors.leftMargin: 0
                anchors.topMargin: 0
                font.bold: true
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                z: 1
                font.pixelSize: 15
            }

            MouseArea {
                id: btn4_area
                anchors.fill: parent
                hoverEnabled: true

                onEntered: {
                    btn4_g1.color = "#000000";
                    btn4_g2.color = "#ffffff";
                    btn4_g3.color = "#6b7c8a";
                    btn4_text.color = "white";
                }

                onExited: {
                    btn4_g1.color = "#ffffff";
                    btn4_g2.color = "#000000";
                    btn4_g3.color = "#6b7c8a";
                    btn4_text.color = "black";

                }
                onClicked: {
                    Qt.quit();
                }

            }
        }
//        DropShadow {
//               id:shadow_4
//               z: 1
//               anchors.fill: btn4_rect
//               horizontalOffset: 3
//               verticalOffset: 3
//               samples: 16
//               color: "#80000000"
//               source: btn4_rect
//        }


    }

    Tips_rect{
        id: dd
        x: 155
        y: -262
    }

//    Rectangle {
//        id: tips_rect
//        x: 155
//        y: -262
//        width: 410
//        height: 200
//        color: "#ffffff"
//        opacity: 0.8
//        z: 3
//        property string tipsText: "tips"
//        Behavior on y {NumberAnimation {duration: 200;easing.type: Easing.InOutQuad}}

//        Text {
//            id: tips_text
//            x: 136
//            y: 84
//            width: 139
//            height: 33
//            text: tips_rect.tipsText
//            font.bold: true
//            verticalAlignment: Text.AlignVCenter
//            horizontalAlignment: Text.AlignHCenter
//            font.pixelSize: 15
//        }

//        Image {
//            id: closeImage
//            anchors.right: parent.right
//            anchors.rightMargin: 8
//            anchors.left: parent.left
//            anchors.leftMargin: 380
//            anchors.bottom: parent.bottom
//            anchors.bottomMargin: 172
//            anchors.top: parent.top
//            anchors.topMargin: 8
//            source: "images/close.png"
//        }

//        MouseArea {
//            id: closeTips
//            anchors.fill:closeImage
//            onClicked: {
//                MainScript.hide_tips_rect();
//            }
//        }
//    }


}

