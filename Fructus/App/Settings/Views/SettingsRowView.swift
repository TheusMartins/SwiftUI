//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Matheus Martins on 01/05/21.
//

import SwiftUI

struct SettingsRowView: View {
    // MARK: - Public properties
    let title: String
    var description: String?
    let linkLabel: String?
    let linkDestination: String?
    
    init(title: String, description: String? = nil, linkLabel: String? = nil, linkDestination: String? = nil) {
        self.title = title
        self.description = description
        self.linkLabel = linkLabel
        self.linkDestination = linkDestination
    }
    
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            
            HStack {
                Text(title).foregroundColor(.gray)
                Spacer()
                if let description = description {
                    Text(description)
                }
                
                if let linkLabel = linkLabel, let linkDestination = linkDestination, let url = URL(string: linkDestination) {
                    Link(linkLabel, destination: url)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                }
                
                
            }
            .padding(.top, 5)
            .padding(.bottom, 5)
        }
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsRowView(title: "Title", description: "Description")
                .previewLayout(.fixed(width: 375, height: 60))
            SettingsRowView(title: "WebSite", linkLabel: "WebSite Description", linkDestination: "google.com")
                .preferredColorScheme(.dark)
                .previewLayout(.fixed(width: 375, height: 60))
        }
    }
}
