//
//  Repository.swift
//  MVC-Storyboard
//
//  Created by giftbot on 2017. 10. 1..
//  Copyright © 2017년 giftbot. All rights reserved.
//

import Foundation

struct Repository: Decodable {
  let fullName: String
  let description: String
  let starCount: Int
  let forkCount: Int
  let url: String
  
  enum CodingKeys: String, CodingKey {
    case fullName = "full_name"
    case description = "description"
    case starCount = "stargazers_count"
    case forkCount = "forks_count"
    case url = "html_url"
  }
}

struct Repositories: Decodable {
  let items: [Repository]
  enum CodingKeys: String, CodingKey {
    case items
  }
}


