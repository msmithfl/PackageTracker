//
//  MainView.swift
//  PackageTracker
//
//  Created by Matthew Smith on 7/18/23.
//

import SwiftUI

struct MainView: View {
    
    @State private var isTrackingViewPresent = false
    
    @State private var trackingNum: String = ""
    
    var body: some View {
        
        ZStack{
            //-----------------------------
            //Background Color
            Color(red: 0.4627, green: 0.8392, blue: 1.0)
                .edgesIgnoringSafeArea(.all)
            
            //-----------------------------
            //Main Title
            VStack{
                Spacer()
                
                Image("package")
                    .resizable()
                    .frame(width: 100, height: 100)
                
                Text("Where's My Package?")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.white)
                
                //-------------------------------
                //Tracking Number Input Field
                HStack{
                    Image(systemName: "number")
                        .foregroundColor(.white)
                    TextField("Tracking Number", text:$trackingNum)
                        .foregroundColor(.white)
                        .font(.title)
                        .fontWeight(.bold)
                    
                    
                }.padding()
                    .overlay{
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(lineWidth: 2)
                            .foregroundColor(.white)
                    }.padding()
                // end of HStack
                
                //-------------------------------
                
                Button(action: {
                    isTrackingViewPresent.toggle()
                }) {
                    Text("Track")
                        .foregroundColor(.white)
                        .font(.title)
                        .bold()
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: 25)
                                .fill(Color.black)
                                .foregroundColor(.black)
                                .opacity(0.5)
                        ).padding(.horizontal)                }
                         .sheet(isPresented: $isTrackingViewPresent) {
                        TrackingView()
                    }
                Spacer()
                
            }// end of VStack
                
        }// end of ZStack
        
    }// end of body
    
}// end of View

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
