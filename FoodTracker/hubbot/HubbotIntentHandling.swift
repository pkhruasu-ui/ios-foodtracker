//
//  HubbotIntentHandling.swift
//  hubbot
//
//  Created by PRAJAK KHRUASUWAN on 3/4/18.
//  Copyright © 2018 PRAJAK KHRUASUWAN. All rights reserved.
//

import Foundation
import Intents

@available(iOS 10.0, *)
public enum INHubbotIntentResponseCode : Int {
    
    
    case unspecified
    
    case ready
    
    case inProgress
    
    case success
    
    case failure
    
    case failureRequiringAppLaunch
    
    case failureMessageNotFound
    
    case failureMessageAttributeNotSet
}



@available(iOS 10.0, *)
open class INHubbotIntent : INIntent {
    
    
    @available(iOS 11.0, *)
    public init(recipients: [INPerson]?, content: String?, speakableGroupName: INSpeakableString?, conversationIdentifier: String?, serviceName: String?, sender: INPerson?){
        print(conversationIdentifier!,sender!)
        super.init()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
}

@available(iOS 10.0, *)
open class INHubbotIntentResponse : INIntentResponse {
    
    
    // The app extension has the option of capturing its private state as an NSUserActivity and returning it as the 'currentActivity'.
    // If the the app is launched, an NSUserActivity will be passed in with the private state.  The NSUserActivity may also be used to query the app's UI extension (if provided) for a view controller representing the current intent handling state.
    // In the case of app launch, the NSUserActivity will have its activityType set to the name of the intent. This intent object will also be available in the NSUserActivity.interaction property.
    public init(code: INHubbotIntentResponseCode, userActivity: NSUserActivity?){
        super.init()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    open var code: INHubbotIntentResponseCode {
        get{
            return self.code
        } }
}

//@available(iOS 10.0, *)
//public protocol INHubbotIntentHandling : NSObjectProtocol {
//
//    /*
//     starting point
//     */
//    func handle(intent: INHubbotIntent, completion: @escaping (INHubbotIntentResponse) -> Swift.Void)
//
//}

//@available(iOS 10.0, *)
//class INHubbotIntentHandling : NSObject, INSendMessageIntentHandling {
//
//    override init() {
//
//    }
//
//    /*
//     starting point
//     */
//    func handle(intent: INSendMessageIntentHandling, completion: @escaping (INSendMessageIntentResponse) -> Swift.Void){
//        completion(INSendMessageIntentResponse.init(code: .success, userActivity: nil))
//    }
//
//}

