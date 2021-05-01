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
    @AppStorage("isOnOnboarding") var isOnOnboarding: Bool = false
    
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
                    
                    GroupBox(
                        label: SectionLabelView(titleText: "Customization", imageString: "paintbrush")) {
                        Divider().padding(.vertical, 4)
                        
                        Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and will see the welcome screen again.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnOnboarding) {
                            if isOnOnboarding {
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.secondary)
                            }
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )
                    }
                    
                    GroupBox(
                    label: SectionLabelView(titleText: "Application", imageString: "apps.iphone")) {
                        
                        SettingsRowView(title: "Developer", description: "John / Jane")
                        
                        SettingsRowView(title: "Designer", description: "Robert Petras")
                        
                        SettingsRowView(title: "Compatibility", description: "iOS 14")
                        
                        SettingsRowView(title: "WebSite", linkLabel: "SwiftUI Masterclass", linkDestination: "swiftuimasterclass.com")
                        
                        SettingsRowView(title: "Twitter", linkLabel: "@RobertPetras", linkDestination: "twitter.com/robertpetras")
                        
                        SettingsRowView(title: "SwiftUI", description: "2.0")
                        
                        SettingsRowView(title: "Version", description: "1.1.0")
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
