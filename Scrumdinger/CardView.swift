//
//  CardView.swift
//  Scrumdinger
//
//  Created by abel.fernandez on 21/5/23.
//

import SwiftUI

struct CardView: View {
    let scrum: DailyScrum
    var body: some View {
        VStack(alignment: .leading) {
            Text(scrum.title)
                .font(.headline)
            Spacer()
            HStack {
                Label("\(scrum.attendees.count)", systemImage: "person.3")
                Spacer()
                Label("\(scrum.lengthInMinutes)", systemImage: "clock")
            }
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previewScrum = DailyScrum.sampleData[0]
    static var previews: some View {
        CardView(scrum: previewScrum)
            .background(previewScrum.theme.mainColor)
            .previewLayout(.fixed(width: 400, height: 60))
    }
}
