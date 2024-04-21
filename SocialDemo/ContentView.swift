//
//  ContentView.swift
//  SocialDemo
//
//  Created by Hitesh Thummar on 12/04/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    @StateObject var viewModel = SocialDataModel()
    @Environment(\.openWindow) var openWindow
    @EnvironmentObject var socialDataModelNavigationModelVar : SocialDataModelNavigationModel
    
    var body: some View {
        GeometryReader{ geometry in
            ScrollView{
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 350))], spacing: 20) {
                    ForEach(viewModel.dataArr, id: \.name) {m  in
                        Button(action: {
                            if m.type == "3"{
                                socialDataModelNavigationModelVar.socialDataModelVar = m
                                openWindow(id: "video")
                            }else if m.type == "2"{
                                socialDataModelNavigationModelVar.socialDataModelVar = m
                                openWindow(id: "image")                                
                            }else if m.type == "4" || m.type == "1"{
                                socialDataModelNavigationModelVar.socialDataModelVar = m
                                openWindow(id: "pdf")
                            }
                        }, label: {
                            VStack(alignment: .leading,spacing: 10) {
                                HStack(alignment: .top) {
                                    AsyncImage(url: URL(string: "https://picsum.photos/id/12/600")) { image in
                                        image.resizable()
                                    } placeholder: {
                                        ProgressView()
                                    }
                                    .frame(width: 100, height: 100)
                                    VStack(alignment: .leading) {
                                        HStack{
                                            Text(m.name).font(.title)
                                            Image(systemName: "link").tint(.blue)
                                        }
                                        Text(m.gender).font(.subheadline)
                                        Text(m.createdAt).font(.subheadline)
                                    }
                                }
                                Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s").font(.callout)
                            }.padding()
                        }).buttonStyle(.borderless)
                            .buttonBorderShape(.roundedRectangle(radius: 20))
                    }
                }
            }
        }
        .task {
            viewModel.fillDataInModel()
        }
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
