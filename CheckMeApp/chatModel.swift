
import Foundation

struct chatModel: Identifiable {
    var id = UUID().uuidString
//    var image: String
    var top: String
    var title:String
    var color : String
}

var ticketss: [chatModel] = [
    chatModel(top: "" , title: "D",color: "Color1"),
    chatModel(top: "" , title: "Hemoglobin",  color: "Color2"),
    chatModel(top: "" ,title: "Triglyceride" ,color: "Color3" ),
    chatModel(top: "" ,title: "Cholesterol" ,  color: "Color4"),
 
]
