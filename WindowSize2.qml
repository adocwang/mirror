// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1
import "mirrorjs.js" as Handler

Rectangle {
    visible: false
    width: 170
    height: 100
    color:"#000"
    radius:10
    property alias text: title.text
    Rectangle {
        width:150
        x:10
        color:"#000"
        height:20
        Rectangle{
            height:20
            width:130
            color:"#000"
            Text {
                id: title
                text: text
                font.pixelSize: 12
                color:"#fff"
            }
        }
        Rectangle{
            x:130
            y:4
            height:8
            width:8
            color:"#fff"
        }
        Rectangle{
            x:145
            width:10
            height:20
            radius:10
            color:"#000"
            Text{
                text:"x"
                font.pixelSize: 12
                color:"#fff"
            }
            MouseArea{
                anchors.fill: parent
                onClicked: Handler.click_icon(text)
            }
        }
    }
    Rectangle{
        y:16
        width:parent.width
        height:2
        color:"#fff"
    }
}
