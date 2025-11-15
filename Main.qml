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
        id: background
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
            visible: false // Mask creates a "projection," so hide the original

            Image{
                id: cardImage

                anchors.fill:parent
                source: "images/pexels-pixabay-41949.png"
            }

            Rectangle{
                id: filter

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

            Item{
                id: infoPanelContainer

                anchors.bottom: parent.bottom
                anchors.left: parent.left
                anchors.right: parent.right
                height: cardImage.height * .3
                Image {
                    id: infoPanelImage
                    source: "images/info-panel.png"
                    anchors.fill: parent

                }

                ColumnLayout{
                    spacing: 2
                    anchors.fill: parent

                    Item{
                        id:headerTextContainer
                        Layout.alignment: Qt.AlignHCenter
                        Layout.fillWidth: true
                        Layout.preferredHeight: infoPanelContainer.height * .2
                        Text{
                            anchors.right: parent.right
                            text: "Navigation"
                            color: "white"
                            font.pixelSize: parent.height * .8
                            anchors.rightMargin: parent.width * .05
                        }
                    }

                    Item{
                        id: paragraphTextContainer
                        Layout.alignment: Qt.AlignCenter
                        Layout.fillWidth: true
                        Layout.fillHeight: true

                        Text{
                            anchors.centerIn: parent
                            wrapMode: Text.WordWrap
                            font.pixelSize: parent.height * .08
                            width: parent.width * .8
                            color: "white"
                            text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur."
                        }
                    }
                }

            }
        }

        OpacityMask{
            id: mask
            anchors.fill: cardBoundary
            maskSource: cardBoundary //Bounds
            source: card //item being cropped

        }
    }
}
