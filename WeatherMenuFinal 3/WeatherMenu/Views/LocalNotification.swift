//
//  LocalNotification.swift
//  PlantNano1
//
//  Created by Silvia Pasica on 25/03/23.
//

import SwiftUI
import UserNotifications

class NotificationManager{
    static let instance = NotificationManager()
    
    func requestAuthorization() {
        let options: UNAuthorizationOptions = [.alert, .sound, .badge]
        UNUserNotificationCenter.current().requestAuthorization(options: options) {
            (success, error) in
            if let error = error {
                print("ERRROR:\(error)")
            }else {
                print("SUCCESS")
                NotificationManager.instance.ScheduleNotification()
            }
        }
    }
    
    func ScheduleNotification(){
        let content = UNMutableNotificationContent()
        content.title = "Knock knock... ur plant is calling"
        content.subtitle = "Hai, ur plant seem thirsty. Lets go give a drink"
        content.sound = .default
        content.badge = 1
        
        
        //time
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
        
        //calendar
//        var dateComponents = DateComponents()
//        dateComponents.hour = 11
//        dateComponents.minute = 6
//
//        let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: true)
//
        let request = UNNotificationRequest(
            identifier: UUID().uuidString,
            content: content,
            trigger: trigger)
        
        UNUserNotificationCenter.current().add(request)
    }
    
    func cancelNotification(){
        UNUserNotificationCenter.current().removeAllPendingNotificationRequests()
        UNUserNotificationCenter.current().removeAllDeliveredNotifications()
    }
    
    
}

struct LocalNotification: View {
    var body: some View {
        VStack (alignment: .leading){
            Text("Set up a notification to remind you to water the plants")
                .fontWeight(.medium)
                .font(.body)
                .foregroundColor(.black)
                .padding(.bottom, 10)
            Button("Schedule Notification"){
                NotificationManager.instance.requestAuthorization()
            }
            .onAppear{
                UIApplication.shared.applicationIconBadgeNumber = 0
            }
            .padding()
            .font(.body)
            .foregroundColor(.black)
            .fontWeight(.bold)
            .background(Color(red: 0.643, green: 0.744, blue: 0.486))
            .cornerRadius(10)
            
        }
        .background(Color(red: 0.969, green: 0.969, blue: 0.969))
        
        
    }
}

struct LocalNotification_Previews: PreviewProvider {
    static var previews: some View {
        LocalNotification()
    }
}
