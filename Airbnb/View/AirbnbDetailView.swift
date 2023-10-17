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
                        .aspectRatio(contentMode: .fill)
                        .clipped()
                    
                    //Info
                    Text(model.name ?? "")
                        .bold()
                    
                    Text("Description: \(model.description ?? "")")
                    Text("Summary: \(model.summary ?? "")")
                    Text("Space: \(model.space ?? "")")
                    Text("House rules: \(model.house_rules ?? "")")
                    //            Text(model.thumbnail_url ?? "")
                    //            Text(model.medium_url ?? "")
                    //            Text(model.xl_picture_url ?? "")
                    //            Text(model.neighbourhood ?? "")
                    //            Text(model.ameneties ?? "")
                    
                    //Host info
                    HStack {
                        AsyncImage(url: URL(string: model.host_picture_url))
                            .frame(width: 75, height: 75)
                            .aspectRatio(contentMode: .fill)
                            .clipShape(Circle())
                        
                        Text(model.host_name)
                            .bold()
                    }
                }
            }
        }
    }
}

