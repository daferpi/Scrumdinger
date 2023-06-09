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
                .accessibilityAddTraits(.isHeader)
            Spacer()
            HStack {
                Label("\(scrum.attendees.count)", systemImage: "person.3")
                    .accessibilityLabel("\(scrum.attendees.count) attendees")
                Spacer()
                Label("\(scrum.lengthInMinutes)", systemImage: "clock")
                    .accessibilityLabel("\(scrum.lengthInMinutes) minute meeting")
                    .labelStyle(.trailingIcon)
            }
            .font(.caption)
        }
        .padding()
        .foregroundColor(scrum.theme.accentColor)
    }
}
// https://developer.apple.com/tutorials/app-dev-training/creating-a-card-view
struct CardView_Previews: PreviewProvider {
    static var previewScrum = DailyScrum.sampleData[0]
    static var previews: some View {
        CardView(scrum: previewScrum)
            .background(previewScrum.theme.mainColor)
            .previewLayout(.fixed(width: 400, height: 60))
    }
}
