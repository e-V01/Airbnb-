//
//  AirbnbDetailView.swift
//  Airbnb
//
//  Created by Y K on 16.10.2023.
//

import SwiftUI

struct AirbnbDetailView: View {
    let model: AirbnbListing
    
    var body: some View {
        VStack(alignment: .leading) {
            GeometryReader { proxy in
                ScrollView(.vertical) {
                    // Picture
                    AsyncImage(url: URL(string: model.xl_picture_url ?? ""))
                        .frame(width: proxy.frame(in: .global).width, height: proxy.frame(in: .global).width)
                        .aspectRatio(contentMode: .fit)
                        .clipped()
                    
                    //Info
                    Text(model.name ?? "")
                        .bold()
                        .padding()
                    
                    if let price = model.price {
                        Text("Nightly rate: \(price.formatted(.currency(code: "USD")))")
                    }
                    Text("Description: \(model.description ?? "")")
                        .padding()
                    
                    Text("Summary: \(model.summary ?? "")")
                        .padding()
                    
                    Text("Space: \(model.space ?? "")")
                        .padding()
                    
                    Text("House rules: \(model.house_rules ?? "")")
                        .padding()

                    //            Text(model.thumbnail_url ?? "")
                    //            Text(model.medium_url ?? "")
                    //            Text(model.xl_picture_url ?? "")
                    //            Text(model.neighbourhood ?? "")
                    //            Text(model.ameneties ?? "")
                    
                    //Host info
                    Text("About Your Host")
                        .font(.title2)
                        .bold()
                    
                    HStack {
                        AsyncImage(url: URL(string: model.host_thumbnail_url))
                            .frame(width: 75, height: 75)
                            .aspectRatio(contentMode: .fill)
                            .clipShape(Circle())
                        
                        Text(model.host_name)
                            .bold()
                    }
                    .padding()
                    
                    Text("Hosting since: " + model.host_since)
                }
                .frame(maxWidth: proxy.frame(in: .global).width)
            }
        }
        .navigationTitle(model.name ?? "Listings")
    }
}

