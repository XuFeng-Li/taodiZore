//
//  Animal.swift
//  TaodiZoo
//
//  Created by 李旭峰 on 2022/8/10.
//

import Foundation

class Animal {
  
  /// 喜欢的食物
  var favoriteFood: String
  var dislikedFood: String
  
  func eat(food: String) { }
  /// 指定构造器
  /// - Parameter food: 食物
  init(favoriteFood: String, dislikedFood: String) {
    self.favoriteFood = favoriteFood
    self.dislikedFood = dislikedFood
  }
}
