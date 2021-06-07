//
//  NavigationBarDetailView.swift
//  Touchdown
//
//  Created by Matheus Martins on 06/06/21.
//

import SwiftUI

struct NavigationBarDetailView: View {
    var body: some View {
        HStack {
            Button(action: {}) {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
            }
            
            Spacer()
            
            Button(action: {}) {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.white)
            }
        }
    }
}

struct NavigationBarDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
            
    }
}
