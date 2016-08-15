//
//  ArticleService.swift
//  zhihuSwiftDemo
//
//  Created by Afluy on 16/8/12.
//  Copyright © 2016年 helios. All rights reserved.
//

import Foundation
import Alamofire
import ObjectMapper
import AlamofireObjectMapper

class ArticleService {
    static func requestLatestArticles(completion: (WLYDailyArticle?, NSError?) -> Void) {
        Alamofire.request(.GET, BaseServiceAPI.APIArticleList, parameters: nil)
            .responseObject { (response: Response<WLYDailyArticle, NSError>) in
                switch response.result {
                case .Success:
                    if let dailyArticle = response.result.value {
                        print("dailyArticle: \(dailyArticle)")

                        completion(dailyArticle, nil)
                    }
                case .Failure(let error):
                    print(error)
                    completion(nil, error)
                }
        }
    }
    
    static func requestArticleDetail(id: String, completion: (WLYArticleDetail?, NSError?) -> Void) {
        Alamofire.request(.GET, BaseServiceAPI.APIArticleDetail + id, parameters: nil)
            .responseObject { (response: Response<WLYArticleDetail, NSError>) in
                switch response.result {
                case .Success:
                    if let articleDetail = response.result.value {
                        completion(articleDetail, nil)
                    }
                case .Failure(let error):
                     completion(nil, error)
                }
        }
    }
}
