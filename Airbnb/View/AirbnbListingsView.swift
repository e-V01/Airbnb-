//  AirbnbListingsView.swift
//  Airbnb
//
//  Created by Y K on 16.10.2023.
//

import SwiftUI

struct AirbnbListingsView: View {
    @StateObject var viewModel = AirbnbListingsViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                if viewModel.listings.isEmpty {
                    ProgressView()
                        .progressViewStyle(CircularProgressViewStyle())
                } else {
                    List(viewModel.listings) { listing in
                        NavigationLink(destination: AirbnbDetailView(model: listing), label: {
                            AirbnbListingCardView(model: listing)
                        })
                    }
                }
            }
            .navigationTitle("Airbnb")
            
        }
        .onAppear {
            viewModel.fetchListings()
        }
    }
}
