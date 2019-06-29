//
//  UpdateUIOperation.swift
//  app_store
//
//  Created by Mustafa Khalil on 5/25/19.
//  Copyright © 2019 Mustafa Khalil. All rights reserved.
//

import Foundation

public class UpdateUIOperation: BaseOperation {

    public override init() {
        super.init()
        isAsynchronous = false
    }
    
    public override func start() {
        guard !isCancelled else {
            return
        }
        executing(true)
        main()
    }
    
    public override func main() {
        executing(false)
    }
}
