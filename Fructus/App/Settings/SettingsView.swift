//
//  SettingsView.swift
//  Fructus
//
//  Created by Matheus Martins on 29/04/21.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - Properties
    @Environment(\.presentationMode) private var presentationMode
    
    // MARK: - View
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    
                    GroupBox(
                        label: SectionLabelView(titleText: "Fructus", imageString: "info.circle")
                    ) {
                        Divider().padding(.vertical, 4)
                        
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(8)
                            Text("Most fruits are naturally low in fat, sodium, and calories. Nonemhave cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary, fiber, vitamins, and much more")
                                .font(.footnote)
                        }
                    }
                }
            }
            .navigationBarTitle(Text("Settings"), displayMode: .large)
            .navigationBarItems(
                trailing:
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }) {
                        
                        Image(systemName: "xmark")
                    }
            )
            .padding()
        }
    }
}

// MARK: - Preview
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView().preferredColorScheme(.dark).previewDevice("iPhone 12 Pro")
    }
}
