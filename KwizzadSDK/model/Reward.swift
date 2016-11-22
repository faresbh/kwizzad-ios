//
//  Reward.swift
//  KwizzadSDK
//
//  Created by Sandro Manke on 20.10.16.
//  Copyright © 2016 Kwizzad. All rights reserved.
//

import Foundation

public enum RewardType : String {
    case UNKNOWN = ""
    case CALLBACK = "callback"
    case CALL2ACTIONSTARTED = "call2ActionStarted"
    case GOALREACHED = "goalReached"
}

open class Reward : FromDict {
    open let amount : Int?
    open let maxAmount : Int?
    open let currency : String?
    open let type : RewardType
    
    public required init(_ map: [String : Any]) {
        amount = map["amount"] as? Int
        maxAmount = map["maxAmount"] as? Int
        currency = map["currency"] as? String
        
        if let rt = map["type"] as? String {
            if let type = RewardType(rawValue: rt) {
                self.type = type
            }
            else {
                type = .UNKNOWN
            }
        }
        else {
            type = .UNKNOWN
        }
        
    }
}
