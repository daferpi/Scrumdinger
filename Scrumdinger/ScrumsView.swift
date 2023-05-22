//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by abel.fernandez on 22/5/23.
//

import SwiftUI

struct ScrumsView: View {
    let scrums: [DailyScrum]
    
    var body: some View {
        NavigationStack {
            List(scrums) { item in
                NavigationLink(destination: Text(item.title)) {
                    CardView(scrum: item)
                        
                }
                .listRowBackground(item.theme.mainColor)
            }
            .navigationTitle("Daily Scrums")
            .toolbar {
                Button(action: {}) {
                    Image(systemName: "plus")
                }
                .accessibilityLabel("New Scrum")
            }
        }
    }
}

struct ScrumsView_Previews: PreviewProvider {
    static var previews: some View {
        ScrumsView(scrums: DailyScrum.sampleData)
    }
}
