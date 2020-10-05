//
//  PlaceholdersProvider+Defauls.swift
//  Pods
//
//  Created by Hamza Ghazouani on 20/07/2017.
//
//

import Foundation

public extension PlaceholdersProvider {
    public static var Default: PlaceholdersProvider {
        var commonStyle = PlaceholderStyle()
        commonStyle.backgroundColor = UIColor.white
        commonStyle.actionBackgroundColor = UIColor.init(red: 0/255, green: 104/255, blue: 177/255, alpha: 1)
        commonStyle.actionTitleColor = .white
        commonStyle.titleColor = .black
        commonStyle.isAnimated = false
        commonStyle.actionTitleFont = UIFont(name: "Cedarville-Cursive", size: 17)!
        commonStyle.titleFont = UIFont(name: "Cedarville-Cursive", size: 17)!
        commonStyle.actionTitleFont = UIFont(name: "Cedarville-Cursive", size: 14)!
                
        var loadingStyle = commonStyle
        loadingStyle.actionBackgroundColor = .clear
        loadingStyle.actionTitleColor = .gray
        
        var loadingData: PlaceholderData = .loading
        loadingData.image = nil
        loadingData.showsLoading = true
        loadingData.title = "Loading your data"
        loadingData.subtitle = "Please Wait"
        loadingData.action = nil
        let loading = Placeholder(data: loadingData, style: loadingStyle, key: .loadingKey)
        
        var errorData: PlaceholderData = .error
        errorData.title = "Something went wrong"
        errorData.image = nil
        let error = Placeholder(data: errorData, style: commonStyle, key: .errorKey)
        
        var noResultsData: PlaceholderData = .noResults
        noResultsData.image = nil
        noResultsData.title = "No result found"
        noResultsData.subtitle = "No Data Present"
        let noResults = Placeholder(data: noResultsData, style: commonStyle, key: .noResultsKey)
        
        var noConnectionData: PlaceholderData = .noConnection
        noConnectionData.image = nil
        noConnectionData.title = "Internet is not connected"
        noConnectionData.subtitle = "please check your connection"
        let noConnection = Placeholder(data: noConnectionData, style: commonStyle, key: .noConnectionKey)
        
        let placeholdersProvider = PlaceholdersProvider(loading: loading, error: error, noResults: noResults, noConnection: noConnection)
        
        return placeholdersProvider
    }
}

// MARK: images Utilities
extension PlaceholdersProvider {
    
    static func image(named name: String) -> UIImage? {
        let image = UIImage(named: name) ?? UIImage(named: name, in: Bundle(for: self), compatibleWith: nil)
        
        return image
    }
}

struct HGColor {
    static let violet = UIColor(red: 250.0/255.0, green: 222.0/255.0, blue: 251.0/255.0, alpha: 1.0)
}
