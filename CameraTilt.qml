import QtQuick 2.0
import QtQuick.Controls         1.2
import QtQuick.Controls.Styles  1.4
import QtQuick.Dialogs          1.2
import QtLocation               5.3
import QtPositioning            5.3
import QtMultimedia             5.5
import QtQuick.Layouts          1.2
import QtQuick.Window           2.2

import QGroundControl               1.0
import QGroundControl.FlightDisplay 1.0
import QGroundControl.FlightMap     1.0
import QGroundControl.ScreenTools   1.0
import QGroundControl.Controls      1.0
import QGroundControl.Palette       1.0
import QGroundControl.Vehicle       1.0
import QGroundControl.Controllers   1.0
import QGroundControl.FactSystem    1.0

Rectangle {

    Text {
        id:     cameraTiltText
        text:   "Camera Tilt"
        anchors.margins:               ScreenTools.defaultFontPixelHeight
        anchors.bottom: cameraTiltUpBtnContainer.top
        anchors.right:  parent.right
        font.pointSize: 14
        visible: true
    }

    Item {
        id:                            cameraTiltUpBtnContainer
        anchors.bottom:                cameraTiltCenterBtnContainer.top
        anchors.margins:               ScreenTools.defaultFontPixelHeight / 2
        anchors.horizontalCenter:      cameraTiltText.horizontalCenter
        height:                        ScreenTools.defaultFontPixelHeight * 4
        width:                         height
        visible:                       true
        opacity:                       0.75
        Rectangle {
            id:                 cameraTiltUpBtn
            anchors.top:        parent.top
            anchors.bottom:     parent.bottom
            width:              height
            radius:             height
            color:              "transparent"

            QGCColoredImage {
                anchors.top:                parent.top
                anchors.bottom:             parent.bottom
                anchors.horizontalCenter:   parent.horizontalCenter
                width:                      height * 0.625
                sourceSize.width:           width
                source:                     "/qmlimages/resources/TiltUp.svg"
                fillMode:                   Image.PreserveAspectFit
                color:                      "transparent"
            }
        }

        MouseArea {
            id:             cameraTiltUpBtnMouseArea
            anchors.fill:   parent
            onClicked: {
                mostrar = !mostrar
            }
        }
    }

    Item {
        id:                            cameraTiltCenterBtnContainer
        anchors.bottom:                cameraTiltDownBtnContainer.top
        anchors.margins:               ScreenTools.defaultFontPixelHeight / 2
        anchors.horizontalCenter:      cameraTiltText.horizontalCenter
        height:                        ScreenTools.defaultFontPixelHeight * 4
        width:                         height
        visible:                       true
        opacity:                       0.75
        Rectangle {
            id:                 cameraTiltCenterBtn
            anchors.top:        parent.top
            anchors.bottom:     parent.bottom
            width:              height
            radius:             height
            color:              "transparent"

            QGCColoredImage {
                anchors.top:                parent.top
                anchors.bottom:             parent.bottom
                anchors.horizontalCenter:   parent.horizontalCenter
                width:                      height * 0.625
                sourceSize.width:           width
                source:                     "/qmlimages/resources/TiltCenter.svg"
                fillMode:                   Image.PreserveAspectFit
                color:                      "transparent"
            }
        }

        MouseArea {
            id:             cameraTiltCenterBtnMouseArea
            anchors.fill:   parent
            onClicked: {
                mostrar = !mostrar
            }
        }
    }

    Item {
        id:                            cameraTiltDownBtnContainer
        anchors.bottom:                parent.bottom
        anchors.horizontalCenter:      cameraTiltText.horizontalCenter
        anchors.margins:               ScreenTools.defaultFontPixelHeight / 2
        height:                        ScreenTools.defaultFontPixelHeight * 4
        width:                         height
        visible:                       true
        opacity:                       0.75
        Rectangle {
            id:                 cameraTiltDownBtn
            anchors.top:        parent.top
            anchors.bottom:     parent.bottom
            width:              height
            radius:             height
            color:              "transparent"

            QGCColoredImage {
                anchors.top:                parent.top
                anchors.bottom:             parent.bottom
                anchors.horizontalCenter:   parent.horizontalCenter
                width:                      height * 0.625
                sourceSize.width:           width
                source:                     "/qmlimages/resources/TiltDown.svg"
                fillMode:                   Image.PreserveAspectFit
                color:                      "transparent"
            }
        }

        MouseArea {
            id:             cameraTiltDownBtnMouseArea
            anchors.fill:   parent
            onClicked: {
                mostrar = !mostrar
            }
        }
    }
}

