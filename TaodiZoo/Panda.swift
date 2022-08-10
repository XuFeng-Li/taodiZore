//
//  Panda.swift
//  TaodiZoo
//
//  Created by 李旭峰 on 2022/8/10.
//

import Foundation

protocol Lovable {
  /// 好感度
  var favorability: Int { get }
  func prefer(offset: Int) -> Void
  func annoying(offset: Int) -> Void
}
extension Lovable {
  func prefer(offset: Int) { }
  func annoying(offset: Int) { }
}

protocol Hungry {
  var satiety: Int { get }
  func upSatiety(offset: Int) -> Void
  func downSatiety(offset: Int) -> Void
}

class Panda: Animal, Lovable, Hungry {
  
  /// 饱食度
  var satiety: Int
  func upSatiety(offset: Int) {
    satiety = satiety + offset
  }
  
  func downSatiety(offset: Int) {
    satiety = max(satiety - offset, 0)
  }
  
  /// 好感度
  var favorability: Int
  func prefer(offset: Int) {
    favorability = favorability + offset
  }
  func annoying(offset: Int) {
    favorability = max(favorability - offset, 0)
  }
  
  override func eat(food: String) {
    switch food {
    case favoriteFood:
      upSatiety(offset: 10)
      prefer(offset: 10)
    case dislikedFood:
      downSatiety(offset: 10)
      annoying(offset: 10)
    default:
      upSatiety(offset: 5)
      prefer(offset: 5)
    }
  }
  /// 指定构造器
  init() {
    // 默认的饱食度为60
    satiety = 60
    // 默认的好感度为60
    favorability = 60
    // 提交父类指定构造器
    super.init(favoriteFood: "竹子", dislikedFood: "钉子")
    // 重新设置好感度为80
    self.favorability = 80
  }
}
