//
//  ACComponentItemMessage.swift
//  ACComponentItemMessage
//
//  Created by 沈移动 on 2018/8/20.
//  Copyright © 2018年 bigapp. All rights reserved.
//

import Foundation
import ACRouterKit

/// 轮播图
public class ACComponentItemMessage : ACComponentBase {
    
    /// 组件字典
    fileprivate var componentDic : [String:Any] = [:]
    
    fileprivate var configDic: [String: ComponentBaseModel] = [:]
    
    override public init!() {
        super.init()
    }
    
    override public init!(app: ACComponentBaseProtocol!) {
        super.init(app: app)
    }
}
