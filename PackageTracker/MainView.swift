//
//  MainView.swift
//  PackageTracker
//
//  Created by Geovani Rodriguez on 7/23/23.
//

import SwiftUI

struct MainView: View {
    @State private var isTrackingViewPresent = false
    @State private var trackingNum: String = ""
    @State private var trackedPackages: [String] = []
    @State private var showError: Bool = false

    var body: some View {
        ZStack{
            Color(red: 0.4627, green: 0.8392, blue: 1.0)
                .edgesIgnoringSafeArea(.all)

            VStack{
                Spacer()

                Image("package")
                    .resizable()
                    .frame(width: 100, height: 100)

                Text("Where's My Package?")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.white)

                HStack{
                    Image(systemName: "number")
                        .foregroundColor(.white)
                    TextField("Tracking Number", text: $trackingNum)
                        .foregroundColor(.white)
                        .font(.title)
                        .fontWeight(.bold)

                }.padding()
                    .overlay{
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(lineWidth: 2)
                            .foregroundColor(.white)
                    }.padding()

                if showError {
                    Text("Please enter a valid tracking number.")
                        .foregroundColor(.red)
                }

                Button(action: {
                    if mockData[trackingNum] != nil {
                        isTrackingViewPresent.toggle()
                        trackedPackages.append(trackingNum)
                        showError = false
                    } else {
                        showError = true
                    }
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
                        ).padding(.horizontal)
                }
                .sheet(isPresented: $isTrackingViewPresent) {
                    TrackingView(trackingNumber: $trackingNum)
                }

                if !trackedPackages.isEmpty {
                    Text("Tracked Packages:")
                        .font(.title2)
                        .bold()
                        .foregroundColor(.white)
                        .padding(.top)

                    ForEach(trackedPackages, id: \.self) { trackingNumber in
                        Text(trackingNumber)
                            .foregroundColor(.white)
                    }
                }

                Spacer()
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
