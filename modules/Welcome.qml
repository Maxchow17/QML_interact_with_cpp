import QtQuick 2.0
//import QtGraphicalEffects 1.0

    Item {
        width: 400
        height: 317

        Rectangle {
            id: welcome_back
            x: 0
            y: 42
            anchors.fill: parent
            radius: 0
            border.width: 2
            opacity: 1
            gradient: Gradient {
                GradientStop {
                    position: 0.378
                    color: "#ffffff"
                }

                GradientStop {
                    position: 0.653
                    color: "#ffffff"
                }

                GradientStop {
                    position: 1
                    color: "#000000"
                }

            }

            Image {
                id: d_image
                x: -156
                y: -120
                width: 34
                height: 35
                source: "../images/close.png"
                ParallelAnimation {
                       running: true
                       NumberAnimation { target: d_image; property: "x"; to: 87; duration: 3000 }
                       NumberAnimation { target: d_image; property: "y"; to: 163; duration: 3000 }
                   }
            }
//            DropShadow {
//                    anchors.fill: d_image
//                    horizontalOffset: 3
//                    verticalOffset: 3
//                    radius: 8.0
//                    samples: 16
//                    color: "#80000000"
//                    source: d_image
//            }


            Image {
                id: a_image
                x: -313
                y: 141
                width: 43
                height: 35
                source: "../images/close.png"

                ParallelAnimation {
                       running: true
                       NumberAnimation { target: a_image; property: "x"; to: 120; duration: 3000 }
                       NumberAnimation { target: a_image; property: "y"; to: 163; duration: 3000 }
                   }

            }
//            DropShadow {
//                    anchors.fill: a_image
//                    horizontalOffset: 3
//                    verticalOffset: 3
//                    radius: 8.0
//                    samples: 16
//                    color: "#80000000"
//                    source: a_image
//            }


            Image {
                id: s_image
                x: -149
                y: 397
                width: 32
                height: 35
                source: "../images/close.png"
                ParallelAnimation {
                       running: true
                       NumberAnimation { target: s_image; property: "x"; to: 163; duration: 3000 }
                       NumberAnimation { target: s_image; property: "y"; to: 163; duration: 3000 }
                   }
            }
//            DropShadow {
//                    anchors.fill: s_image
//                    horizontalOffset: 3
//                    verticalOffset: 3
//                    radius: 8.0
//                    samples: 16
//                    color: "#80000000"
//                    source: s_image
//            }

            Image {
                id: c_image
                x: 521
                y: 397
                width: 36
                height: 35
                source: "../images/close.png"
                ParallelAnimation {
                       running: true
                       NumberAnimation { target: c_image; property: "x"; to: 197; duration: 3000 }
                       NumberAnimation { target: c_image; property: "y"; to: 163; duration: 3000 }
                   }


            }
//            DropShadow {
//                    anchors.fill: c_image
//                    horizontalOffset: 3
//                    verticalOffset: 3
//                    radius: 8.0
//                    samples: 16
//                    color: "#80000000"
//                    source: c_image
//            }


            Image {
                id: o_image
                x: 648
                y: 141
                width: 35
                height: 35
                source: "../images/close.png"
                ParallelAnimation {
                       running: true
                       NumberAnimation { target: o_image; property: "x"; to: 234; duration: 3000 }
                       NumberAnimation { target: o_image; property: "y"; to: 163; duration: 3000 }
                   }
            }
//            DropShadow {
//                    anchors.fill: o_image
//                    horizontalOffset: 3
//                    verticalOffset: 3
//                    radius: 8.0
//                    samples: 16
//                    color: "#80000000"
//                    source: o_image
//            }


            Image {
                id: m_image
                x: 521
                y: -120
                width: 42
                height: 35
                source: "../images/close.png"

                ParallelAnimation {
                       running: true
                       NumberAnimation { target: m_image; property: "x"; to: 270; duration: 3000 }
                       NumberAnimation { target: m_image; property: "y"; to: 163; duration: 3000 }
                }
            }
//            DropShadow {
//                    anchors.fill: m_image
//                    horizontalOffset: 3
//                    verticalOffset: 3
//                    radius: 8.0
//                    samples: 16
//                    color: "#80000000"
//                    source: m_image
//            }




            Image {
                id: group_image
                x: 79
                y: -457
                width: 242
                height: 45
                opacity: 1
                source: "../images/background.jpg"

                ParallelAnimation {
                       running: true
                       NumberAnimation { target: group_image; property: "x"; to: 79; duration: 3000 }
                       NumberAnimation { target: group_image; property: "y"; to: 113; duration: 3000 }
                }
            }

//            DropShadow {
//                    anchors.fill: group_image
//                    horizontalOffset: 3
//                    verticalOffset: 3
//                    radius: 8.0
//                    samples: 16
//                    color: "#80000000"
//                    source: group_image
//            }


        }
    }




