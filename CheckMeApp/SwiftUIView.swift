import SwiftUI

struct SwiftUIView: View {
    var body: some View {
     NavigationView {
          VStack {
              
              Image("p1")
                  .resizable()
                  .frame(width: 350 , height: 250 , alignment: .center)
              
              Text("Lets’s learn more about your medical result!")
                  .font(.system(size: 24 , weight: .bold , design: .rounded))
                  .foregroundColor(.init("Color3"))
           
              NavigationLink(destination: chatTickets()) {
                  Text("Start")
                  
                  .frame(width : 200, height: 50)
                  .font(.title3)
                  .fontWeight(.bold)
                  .foregroundColor(.white)
                  .background(Color("Color1"))
                  .cornerRadius(10)
                  
              }
              .padding(30)
          }
         }
}
}
struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
