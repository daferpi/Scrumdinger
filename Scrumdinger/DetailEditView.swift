//
//  DetailEditView.swift
//  Scrumdinger
//
//  Created by abel.fernandez on 24/5/23.
//

import SwiftUI

struct DetailEditView: View {
    @State private var scrum: DailyScrum = DailyScrum.emptyScrum
    
    var body: some View {
        Form {
            Section(header: Text("Meeting Info")) {
                TextField("Title", text: $scrum.title)
                HStack {
                    Slider(value: $scrum.lenghtInMinutesAsDouble, in: 5...30, step: 1) {
                        Text("length")
                    }
                    Spacer()
                    Text("\(scrum.lengthInMinutes) minutes")
                }
            }
        }
    }
}

struct DetailEditView_Previews: PreviewProvider {
    static var previews: some View {
        DetailEditView()
    }
}
