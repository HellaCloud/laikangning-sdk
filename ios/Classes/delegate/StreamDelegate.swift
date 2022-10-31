//
// Created by 候帅 on 2022/10/28.
//

import Foundation


public protocol StreamDelegate {

    // 数据命令
    func fhrData(withData data: LKCDecodeHeart)

    // 错误命令
    func fhrError(withError error: [Int])

    // 发送命令
    func fhrSend(withByte byte: [Int])

}