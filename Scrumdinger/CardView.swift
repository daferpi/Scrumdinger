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
        Text(scrum.title)
            .font(.headline)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previewScrum = DailyScrum.sampleData[1]
    static var previews: some View {
        CardView(scrum: previewScrum)
            .background(previewScrum.theme.mainColor)
            .previewLayout(.fixed(width: 400, height: 60))
    }
}
