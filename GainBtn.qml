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

Item {

    Item {
        id:                            gainIncBtnContainer
        anchors.bottom:                gainDecBtnContainer.top
        anchors.margins:               ScreenTools.defaultFontPixelHeight / 2
        anchors.horizontalCenter:      gainDecBtnContainer.horizontalCenter
        height:                        ScreenTools.defaultFontPixelHeight * 4
        width:                         height
        visible:                       true
        opacity:                       0.75
        Rectangle {
            id:                 gainIncBtn
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
                source:                     "/qmlimages/resources/GainUp.svg"
                fillMode:                   Image.PreserveAspectFit
                color:                      "transparent"
            }
        }

        MouseArea {
            id:             gainIncBtnMouseArea
            anchors.fill:   parent
            onClicked: {
                mostrar = !mostrar
            }
        }
    }

    Item {
        id:                            gainDecBtnContainer
        anchors.bottom:                parent.bottom
        anchors.margins:               ScreenTools.defaultFontPixelHeight / 2
        anchors.left:                  parent.left
        height:                        ScreenTools.defaultFontPixelHeight * 4
        width:                         height
        visible:                       true
        opacity:                       0.75
        Rectangle {
            id:                 gainDecBtn
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
                source:                     "/qmlimages/resources/GainDown.svg"
                fillMode:                   Image.PreserveAspectFit
                color:                      "transparent"
            }
        }

        MouseArea {
            id:             gainDecBtnMouseArea
            anchors.fill:   parent
            onClicked: {
                mostrar = !mostrar
            }
        }
    }

}
