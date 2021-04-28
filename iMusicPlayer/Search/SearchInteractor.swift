//
//  SearchInteractor.swift
//  iMusicPlayer
//
//  Created by Sergei Isaikin on 28.04.2021.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol SearchBusinessLogic {
  func makeRequest(request: Search.Model.Request.RequestType)
}

class SearchInteractor: SearchBusinessLogic {

  var presenter: SearchPresentationLogic?
  var service: SearchService?
  
  func makeRequest(request: Search.Model.Request.RequestType) {
    if service == nil {
      service = SearchService()
    }
    switch request {
    case .some:
        print("interactor .some")
        presenter?.presentData(response: Search.Model.Response.ResponseType.presentTracks)
    case .getTracks:
        print("interactor .getTracks")
        presenter?.presentData(response: Search.Model.Response.ResponseType.presentTracks)
    }
  }
  
}
