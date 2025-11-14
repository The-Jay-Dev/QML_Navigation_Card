import QtQuick
import Qt5Compat.GraphicalEffects
import QtQuick.Layouts

Window {
    id: mainWindow
    width: 640
    height: 480
    visible: true
    title: qsTr("Navigation Card")

    Rectangle{
        id:background
        color:"#303030"
        anchors.fill: parent

        //Card
        Rectangle{
            id: cardBoundary
            
            anchors.centerIn: parent
            width: mainWindow.width * 0.3
            height: width * 1.5
            color: "#1f1f5a"
            radius: height * 0.05
        }

        //Card Contents
        Item{
            id: card
            anchors.fill: cardBoundary
            visible: false

            Image{
                id: cardImage
                anchors.fill:parent
                source: "images/pexels-pixabay-41949.png"
            }

            Rectangle{
                id:filter
                anchors.fill: parent
                color: "#1f1f5a"
                opacity: 0.5
            }

            Image{
                id: compassPanel
                source: "images/compass-panel.png"
                anchors.top: parent.top
                anchors.right: parent.right
                height: cardImage.height * 0.2
                width: cardImage.width * 0.5
            }


        }

        OpacityMask{
            id: mask
            anchors.fill: cardBoundary
            maskSource: cardBoundary
            source: card

        }
    }



}
