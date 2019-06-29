//
//  BaseOperation.swift
//  app_store
//
//  Created by Mustafa Khalil on 4/21/19.
//  Copyright © 2019 Mustafa Khalil. All rights reserved.
//

import Foundation
import Swift

infix operator >>>

public class BaseOperation: Operation {
    
    fileprivate var _isExecuting = false
    fileprivate var _isFinished = false
    fileprivate var _isAsynchronous = false
    
    public override var isExecuting: Bool {
        get {
            return _isExecuting
        }
        set {
            willChangeValue(forKey: "isExecuting")
            _isExecuting = newValue
            didChangeValue(forKey: "isExecuting")
        }
    }
    
    public override var isFinished: Bool {
        get {
            return _isFinished
        }
        set {
            willChangeValue(forKey: "isFinished")
            _isFinished = newValue
            didChangeValue(forKey: "isFinished")
        }
    }
    public override var isAsynchronous: Bool {
        get {
            return _isAsynchronous
        }
        set {
            willChangeValue(forKey: "isAsynchronous")
            _isAsynchronous = newValue
            didChangeValue(forKey: "isAsynchronous")
        }
    }
    
    public func executing(_ isExecuting: Bool) {
        self.isExecuting = isExecuting
        self.isFinished = !isExecuting
    }
}

extension OperationQueue {
    
    public func cancelAllOperationsWithDependencies() {
        for operation in operations.reversed() {
            operation.cancel()
        }
    }
}

extension Operation {
    
    public static func >>>(lhs: Operation, rhs: Operation) {
        rhs.addDependency(lhs)
    }
}
