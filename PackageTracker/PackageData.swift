//
//  PackageData.swift
//  PackageTracker
//
//  Created by Geovani Rodriguez on 7/23/23.
//

import Foundation

// Mock data for package tracking
let mockData: [String: (status: String, location: String, deliveryDate: String, sender: String, senderAddress: String, recipient: String, recipientAddress: String, shippingMethod: String, weight: String, specialInstructions: String)] = [
    "12345": (
        status: "In Transit",
        location: "New York, NY",
        deliveryDate: "2023-08-01",
        sender: "John Doe",
        senderAddress: "123 Main St, San Francisco, CA",
        recipient: "Jane Smith",
        recipientAddress: "456 Park Ave, New York, NY",
        shippingMethod: "Express",
        weight: "2 lbs",
        specialInstructions: "Leave at front door if no one is home."
    ),
    "67890": (
        status: "Delivered",
        location: "San Francisco, CA",
        deliveryDate: "2023-07-20",
        sender: "Alice Johnson",
        senderAddress: "789 Broadway, Los Angeles, CA",
        recipient: "Bob Brown",
        recipientAddress: "321 Pine St, San Francisco, CA",
        shippingMethod: "Standard",
        weight: "5 lbs",
        specialInstructions: "Deliver to recipient only."
    ),
    "11223": (
        status: "In Transit",
        location: "Chicago, IL",
        deliveryDate: "2023-07-30",
        sender: "Charlie Green",
        senderAddress: "654 Oak St, Chicago, IL",
        recipient: "Danielle White",
        recipientAddress: "987 Elm St, Miami, FL",
        shippingMethod: "Express",
        weight: "1 lb",
        specialInstructions: "Do not leave unattended."
    ),
    // Add more tracking numbers and package details as needed
]

