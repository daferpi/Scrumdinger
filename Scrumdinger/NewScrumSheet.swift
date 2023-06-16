//
//  NewScrumSheet.swift
//  Scrumdinger
//
//  Created by abel.fernandez on 16/6/23.
//

import SwiftUI

struct NewScrumSheet: View {
    @Binding var scrums: [DailyScrum]
    @Binding var isPresentingSheet: Bool
    @State var newScrumInitialized: DailyScrum = DailyScrum.emptyScrum
    
    var body: some View {
        NavigationStack {
            DetailEditView(scrum: $newScrumInitialized)
                .toolbar {
                    ToolbarItem(placement: .cancellationAction) {
                        Button("Dismiss") {
                            isPresentingSheet = false
                        }
                    }
                    ToolbarItem(placement: .confirmationAction) {
                        Button("Add") {
                            scrums.append(newScrumInitialized)
                            isPresentingSheet = false
                        }
                    }
                }
        }
    }
}

struct NewScrumSheet_Previews: PreviewProvider {
    static var previews: some View {
        NewScrumSheet(scrums: .constant(DailyScrum.sampleData),
                      isPresentingSheet: .constant(true))
    }
}
