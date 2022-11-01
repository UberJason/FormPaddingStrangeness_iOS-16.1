//
//  ContentView.swift
//  FormPaddingStrangeness
//
//  Created by Jason Ji on 10/29/22.
//

import SwiftUI

struct Reminder {
    let id = UUID()
    let title: String
    let detail: String
}

struct ContentView: View {
    @State var reminders: [Reminder] = [
        Reminder(title: "Time to Defrost", detail: "4:00 PM, 2 days before meal"),
        Reminder(title: "Time to Marinate", detail: "5:00 PM, 1 day before meal"),
        Reminder(title: "Time to Cook", detail: "5:00 PM, day of meal"),
    ]
    var body: some View {
        Form {
            Section("Any top/bottom padding in blue content") {
                ForEach(reminders, id: \.id) { reminder in
                    ReminderDisplayCell(title: reminder.title, detail: reminder.detail)
                        .padding([.top, .bottom], 1)
                }
                .background(Color.blue)
                .listRowBackground(Color.red)
                .listRowSeparatorTint(.white)
            }
            
            Section("no padding in blue content") {
                ForEach(reminders, id: \.title) { reminder in
                    ReminderDisplayCell(title: reminder.title, detail: reminder.detail)
                }
                .background(Color.blue)
                .listRowBackground(Color.red)
                .listRowSeparatorTint(.white)
            }
        }
    }
}

struct ReminderDisplayCell: View {
    let title: String
    let detail: String
    
    init(title: String, detail: String) {
        self.title = title
        self.detail = detail
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
            Text(detail)
                .font(.system(.caption))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
