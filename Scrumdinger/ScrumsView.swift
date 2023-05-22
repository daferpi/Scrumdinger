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
        List(scrums) { item in
            CardView(scrum: item)
                .listRowBackground(item.theme.mainColor)
        }
    }
}

struct ScrumsView_Previews: PreviewProvider {
    static var previews: some View {
        ScrumsView(scrums: DailyScrum.sampleData)
    }
}
