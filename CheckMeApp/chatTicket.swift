import SwiftUI
struct chatTicket: View {
    @Environment(\.colorScheme) var colorScheme3
    let chat: chatModel
    @State var top: String = ""
    @State private var name: String = ""
    @State private var showingCredits = false
    @State private var showingCredits_2 = false
    @State private var showingCredits_3 = false
    @Binding var height: CGFloat
    @State var showMessgae = false
    var n = Int.random(in: 1...15)
    var gradient: [Color] = [Color("Color1"), Color("Color1").opacity(0), Color("Color1").opacity(0)]
    @State private var showingSheet = false
    @State private var showingAlert = false
    var body: some View {
        VStack(spacing: 0.0) {
            ZStack {
                VStack {
                    Button {
                          showingAlert = true
                    } label: {
                        VStack {
                            Text("Vitamin")
                            Text(chat.title)
                                .foregroundColor(.white)
                                .font(.system(size: 32, weight: .bold, design: .default))
                                .padding(.bottom,10)
                        }.font(.title3)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .font(.system(size: 40 , weight: .bold , design: .rounded))
                            .cornerRadius(10)
                    }
                    .alert(Text("Select Your Result"), isPresented: $showingAlert, actions: {
                        VStack {
                            Button {
                                showingCredits_3.toggle()
                            } label: {
                                Text(" 0 - 75")
                            }
                            Button {
                                showingCredits.toggle()
                            } label: {
                                Text("75 - 115")
                            }
                            Button {
                                showingCredits_2.toggle()
                            } label: {
                                Text("115 - 200")
                            }
                       

                        }
                        
                    })
                    }
                }.padding(.top,40)
                .frame(width: 250,height: 380)
                .overlay {
                RoundedRectangle(cornerRadius: 30)
                    .stroke(LinearGradient(colors: gradient, startPoint: .topLeading, endPoint: .bottomTrailing), style: StrokeStyle(lineWidth: 2))
                  
                }
                .cornerRadius(30)
            
        }.background(Color(chat.color))
            .cornerRadius(30)
            .frame(height: 460)
            .font(.footnote)
            .shadow(radius: 10)
            .sheet(isPresented: $showingCredits_3) {
                
                
                VStack {
              Spacer()
                    Text("Under Normal Range")
                        .multilineTextAlignment(.center)
                        .font(.system(size: 30 , weight: .bold , design: .rounded))
                        .foregroundColor(.init("Color3"))
                        .position(x:200 , y:155)
                    ZStack {
                        Image(systemName: "rectangle.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 300 , height: 300 , alignment: .center)
                            .foregroundColor(.init("Color2"))
                            .position(x:200 , y:90)
                        Text("You Should")
                                                  .font(.system(size: 30 , weight: .bold , design: .rounded))
                                                  .foregroundColor(.white)
                                                  .position(x:196 , y:11)
                        Text("1.Expose your body skin to        sunlight to get Vitamin D        naturally.")
                                                    .font(.system(size: 25 ,  design: .rounded))
                                                    .foregroundColor(.white)
                                                    .position(x:220, y:90)
    
                    }
                    ZStack {
                        Image(systemName: "rectangle.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 300 , height: 300 , alignment: .center)
                            .foregroundColor(.init("Color1"))
                            .position(x:200 , y:90)
                        Text("You Shouldn't")
                            .font(.system(size: 30 , weight: .bold , design: .rounded))
                            .foregroundColor(.white)
                            .position(x:196 , y:11)
                        Text(" 1.Smoking.                                         2.Overweight than normal.                            3.Lack of exposure to the                  sun.")
                            .font(.system(size: 25 ,  design: .rounded))
                            .foregroundColor(.white)
                            .position(x:260, y:90)
                     
                    }
                    Spacer()
                }

                    .presentationDetents([.medium, .large])
            }
            .sheet(isPresented: $showingCredits_2) {
                
                
                VStack {
                    
                    Text("Above Normal Range")
                        .multilineTextAlignment(.center)
                        .font(.system(size: 30 , weight: .bold , design: .rounded))
                        .foregroundColor(.init("Color3"))
                        .position(x:200 , y:155)
                    //
                    ZStack {
                        Image(systemName: "rectangle.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 300 , height: 300 , alignment: .center)
                            .foregroundColor(.init("Color2"))
                            .position(x:200 , y:90)
                        Text("You Should")
                            .font(.system(size: 30 , weight: .bold , design: .rounded))
                            .foregroundColor(.white)
                            .position(x:196 , y:11)
                        Text("1.Consume plent of water.        2.Inform your Doctor right             away.")

                            .font(.system(size: 25 ,  design: .rounded))
                            .foregroundColor(.white)
                            .position(x:230, y:90)
                    }
                    ZStack {
                        Image(systemName: "rectangle.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 300 , height: 300 , alignment: .center)
                            .foregroundColor(.init("Color1"))
                            .position(x:200 , y:90)
                        Text("You Shouldn't")
                            .font(.system(size: 30 , weight: .bold , design: .rounded))
                            .foregroundColor(.white)
                            .position(x:196 , y:11)
                        Text("1.Take vitamin D                     supplement.                      2.Consistently eat foods              rich in calcium.")
                  
                            .font(.system(size: 25 ,  design: .rounded))
                            .foregroundColor(.white)
                            .position(x:250, y:94)
                    }

                    
                }
                
                .presentationDetents([.medium, .large])
            }
            .sheet(isPresented: $showingCredits) {
              VStack {
                    Spacer()
                    Image("p2")

                        .resizable()
                        .scaledToFit()
                        .frame(width: 400 , height: 350 , alignment: .center)
                    
                    Text("Congratulations, you are     in the Normal Range!")
                        .multilineTextAlignment(.center)
                        .font(.system(size: 30 , weight: .bold , design: .rounded))
                        .foregroundColor(.init("Color3"))
                    Text("Keep up the great work.")
                    
                        .multilineTextAlignment(.center)
                        .font(.system(size: 24 , weight: .regular , design: .rounded))
                        .foregroundColor(.init("Color1"))
                    Spacer()
                    
                    
                    
                }

                    .presentationDetents([.medium, .large])
            }
           
    }
}
struct chatTicket_Previews: PreviewProvider {
    static var previews: some View {
        chatTicket(chat: chatModel(top: "", title: "", color: ""), height: .constant(0))
    }
}


struct BackdrropView: UIViewRepresentable {

    func makeUIView(context: Context) -> UIVisualEffectView {
        let view = UIVisualEffectView()
        let blur = UIBlurEffect(style: .extraLight)
        let animator = UIViewPropertyAnimator()
        animator.addAnimations { view.effect = blur }
        animator.fractionComplete = 0
        animator.stopAnimation(true)
        animator.finishAnimation(at: .start)
        return view
    }
    
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) { }
    
}
struct BackdrropBlurView: View {
    
    let radius: CGFloat
    
    @ViewBuilder
    var body: some View {
        BackdrropView().blur(radius: radius)
    }
    
}
