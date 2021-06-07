//
//  SectionTitleView.swift
//  Touchdown
//
//  Created by Matheus Martins on 06/06/21.
//

import SwiftUI

struct SectionView: View {
    // MARK: - Private properties
    private let title: String
    private let isFooter: Bool
    
    // MARK: - Initialization
    init(sectionTitle: String, isFooter: Bool ) {
        self.title = sectionTitle
        self.isFooter = isFooter
    }
    
    // MARK: - View
    var body: some View {
        VStack(spacing: 0) {
            Spacer()
            Text(title.uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .rotationEffect(Angle(degrees: isFooter ? 90 : -90))
            Spacer()
        }
        .background(projectGray.cornerRadius(12))
        .frame(width: 85)
    }
}

struct SectionTitleView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView(sectionTitle: "Title", isFooter: true)
            .previewLayout(.fixed(width: 120, height: 240))
            .padding()
    }
}
