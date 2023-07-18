//
//  TrackingView.swift
//  PackageTracker
//
//  Created by Matthew Smith on 7/18/23.
//

import SwiftUI

struct TrackingView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        //----------------------------
        
        VStack{
            
            //----------------------------
            //Main Title
            Text("Tracking Info")
                .font(.largeTitle)
                .bold()
                .foregroundColor(.black)
                .padding(.top)
            
            Spacer()
            
            //----------------------------
            //Cancel Button
            Button(action: {
                
                presentationMode.wrappedValue.dismiss()
            }) {
                Text("Cancel")
                    .foregroundColor(.gray)
                    .font(.title)
            }
            
        }// end of VStack
        
    }// end of body
    
}// end of View

struct TrackingView_Previews: PreviewProvider {
    static var previews: some View {
        TrackingView()
    }
}
