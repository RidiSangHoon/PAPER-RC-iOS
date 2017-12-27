//
//  JmdnsHelper.swift
//  PAPER-RC-iOS
//
//  Created by LeeSangHoon on 2017. 12. 27..
//  Copyright © 2017년 LeeSangHoon. All rights reserved.
//

import UIKit

class JmdnsHelper: NSObject {
    private var service: NetService!
    
    func onStart() {
        service = NetService(domain: "local.", type: "_ridi-remote._tcp.", name: UIDevice.current.name, port: Int32(52318))
        service.delegate = self
        service.publish()
    }
}
extension JmdnsHelper: NetServiceDelegate {
    func netServiceDidPublish(_ sender: NetService) {
        print("Bonjour service published. domain: \(sender.domain), type: \(sender.type), name: \(sender.name), port: \(sender.port)")
    }
    
    func netService(_ sender: NetService, didNotPublish errorDict: [String : NSNumber]) {
        print("Unable to create socket. domain: \(sender.domain), type: \(sender.type), name: \(sender.name), port: \(sender.port), Error \(errorDict)")
    }
}

