//
//  SocialDataModel.swift
//  SocialDemo
//
//  Created by Hitesh Thummar on 12/04/24.
//

import Foundation

class SocialDataModelNavigationModel: ObservableObject {
    @Published var socialDataModelVar : SocialModel?
    
    func setModel(m:SocialModel){
        socialDataModelVar = m
    }
    
    init(socialDataModelVar: SocialModel? = nil) {
        self.socialDataModelVar = socialDataModelVar
    }
}


class SocialDataModel: ObservableObject {
    @Published var dataArr:[SocialModel] = []
    
    func fillDataInModel()  {
        dataArr.removeAll()
        
        
        var m = SocialModel()
        m.createModel(profilePic: "https://ui-avatars.com/api/?name=John", gender: "Male", name: "John", type: "1", desc: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s", createdAt: "Just Now", media: "https://www.clearias.com/constitution-of-india/")
        dataArr.append(m)
        
        
        m = SocialModel()
        m.createModel(profilePic: "https://ui-avatars.com/api/?name=David", gender: "Male", name: "David", type: "3", desc: "", createdAt: "Just Now",media: "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4")
        dataArr.append(m)
        
        
        m = SocialModel()
        m.createModel(profilePic: "https://ui-avatars.com/api/?name=James", gender: "Male", name: "James", type: "1", desc: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s", createdAt: "Just Now",media: "https://www.thehindu.com/incoming/")
        dataArr.append(m)
                      
        
        m = SocialModel()
        m.createModel(profilePic: "https://ui-avatars.com/api/?name=Michael", gender: "Male", name: "Michael", type: "2", desc: "https://source.unsplash.com/user/c_v_r/1900x800", createdAt: "Just Now",media: "https://source.unsplash.com/user/c_v_r/1900x800")
        dataArr.append(m)
                
        m = SocialModel()
        m.createModel(profilePic: "https://ui-avatars.com/api/?name=Robert", gender: "Male", name: "Robert", type: "1", desc: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s", createdAt: "Just Now",media: "https://economictimes.indiatimes.com/articles/articlelist/30990540.cms?from=mdr")
        dataArr.append(m)
        
        
        m = SocialModel()
        m.createModel(profilePic: "https://ui-avatars.com/api/?name=William", gender: "Male", name: "William", type: "3", desc: "", createdAt: "Just Now",media: "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4")
        dataArr.append(m)
        
        
        m = SocialModel()
        m.createModel(profilePic: "https://ui-avatars.com/api/?name=Richard", gender: "Male", name: "Richard", type: "4", desc: "", createdAt: "Just Now",media: "https://icseindia.org/document/sample.pdf")
        dataArr.append(m)
    }
}

struct SocialModel:Identifiable {
    let id = UUID()
    var profilePic = ""
    var gender = ""
    var name = ""
    var type = ""
    var desc = ""
    var createdAt = ""
    var media = ""
    mutating func createModel(profilePic: String , gender: String , name: String, type: String, desc: String,createdAt: String,media: String) {
        self.profilePic = profilePic
        self.gender = gender
        self.name = name
        self.type = type
        self.desc = desc
        self.createdAt = createdAt
        self.media = media
    }
}
