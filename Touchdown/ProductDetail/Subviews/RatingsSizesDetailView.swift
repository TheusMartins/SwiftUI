//
//  RatingsSizesDetailView.swift
//  Touchdown
//
//  Created by Matheus Martins on 07/06/21.
//

import SwiftUI

struct RatingsSizesDetailView: View {
    // MARK: - Private properties
    private let sizes: [String] = ["XS", "S", "M", "L", "XL"]
 
    // MARK: - View
    var body: some View {
        HStack(alignment: .top, spacing: 3) {
            VStack(alignment: .leading, spacing: 3) {
                Text("Ratings")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(projectGray)
                
                HStack(alignment: .center, spacing: 3) {
                    ForEach(1...5, id: \.self) { item in
                        Image(systemName: "star.fill")
                            .frame(width: 28, height: 28, alignment: .center)
                            .background(projectGray.cornerRadius(5))
                            .foregroundColor(.white)
                    }
                }
            }
            
            Spacer()
            
            VStack(alignment: .trailing, spacing: 3) {
                Text("Sizes")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(projectGray)
                
                HStack(alignment: .center, spacing: 3) {
                    ForEach(sizes, id: \.self) { size in
                        Button(action: {}, label: {
                            Text(size)
                                .font(.footnote)
                                .fontWeight(.heavy)
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(Color.white.cornerRadius(5))
                                .foregroundColor(projectGray)
                                .background(
                                    RoundedRectangle(cornerRadius: 5)
                                        .stroke(projectGray, lineWidth: 2)
                                )
                        })
                    }
                }
            }
            
            
            
        }
    }
}

struct RatingsSizesDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RatingsSizesDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
