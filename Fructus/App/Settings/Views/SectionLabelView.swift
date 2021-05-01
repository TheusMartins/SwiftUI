//
//  SectionLabelView.swift
//  Fructus
//
//  Created by Matheus Martins on 01/05/21.
//

import SwiftUI

struct SectionLabelView: View {
    // MARK: - Public properties
    let titleText: String
    let imageString: String
    
    var body: some View {
        HStack {
            Text(titleText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: imageString)
        }
    }
}

struct SectionLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SectionLabelView(titleText: "Fructus", imageString: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
