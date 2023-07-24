//
//  TrackingView.swift
//  PackageTracker
//
//  Created by Geovani Rodriguez on 7/23/23.
//

import SwiftUI

struct TrackingView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @Binding var trackingNumber: String

    var body: some View {
        ZStack {
            Color(red: 0.4627, green: 0.8392, blue: 1.0)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()

                Text("Tracking Info")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.white)
                    .padding(.top)

                ScrollView {
                    if let packageDetails = mockData[trackingNumber] {
                        Text("📦 Status: \(packageDetails.status)")
                            .font(.title2)
                            .bold()
                            .foregroundColor(.white)
                            .padding(.top)

                        Text("📍 Current Location: \(packageDetails.location)")
                            .font(.title2)
                            .bold()
                            .foregroundColor(.white)
                            .padding(.top)

                        Text("📅 Estimated Delivery: \(packageDetails.deliveryDate)")
                            .font(.title2)
                            .bold()
                            .foregroundColor(.white)
                            .padding(.top)

                        Text("👤 Sender: \(packageDetails.sender)")
                            .font(.title2)
                            .bold()
                            .foregroundColor(.white)
                            .padding(.top)

                        Text("🏠 Sender Address: \(packageDetails.senderAddress)")
                            .font(.title2)
                            .bold()
                            .foregroundColor(.white)
                            .padding(.top)
                            .lineLimit(nil)

                        Text("👥 Recipient: \(packageDetails.recipient)")
                            .font(.title2)
                            .bold()
                            .foregroundColor(.white)
                            .padding(.top)

                        Text("🏡 Recipient Address: \(packageDetails.recipientAddress)")
                            .font(.title2)
                            .bold()
                            .foregroundColor(.white)
                            .padding(.top)
                            .lineLimit(nil)

                        Text("🚚 Shipping Method: \(packageDetails.shippingMethod)")
                            .font(.title2)
                            .bold()
                            .foregroundColor(.white)
                            .padding(.top)

                        Text("⚖️ Weight: \(packageDetails.weight)")
                            .font(.title2)
                            .bold()
                            .foregroundColor(.white)
                            .padding(.top)

                        Text("📝 Special Instructions: \(packageDetails.specialInstructions)")
                            .font(.title2)
                            .bold()
                            .foregroundColor(.white)
                            .padding(.top)
                            .lineLimit(nil)
                    } else {
                        Text("Invalid tracking number.")
                            .font(.title2)
                            .foregroundColor(.red)
                            .padding(.top)
                    }
                }

                Spacer()

                Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }) {
                    Text("Cancel")
                        .foregroundColor(.white)
                        .font(.title)
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: 25)
                                .fill(Color.black)
                                .opacity(0.5)
                        )
                }
                .padding(.bottom)
            }
            .padding()
        }
    }
}

struct TrackingView_Previews: PreviewProvider {
    static var previews: some View {
        TrackingView(trackingNumber: .constant("12345"))
    }
}
