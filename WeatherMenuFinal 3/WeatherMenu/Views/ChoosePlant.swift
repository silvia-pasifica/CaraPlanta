//
//  ChoosePlant.swift
//  PlantNano1
//
//  Created by Silvia Pasica on 21/03/23.
//

import SwiftUI

struct ChoosePlant: View {
    var plants: [Plant] = PlantList.seed
    
    private let columns = [
        GridItem(.adaptive(minimum: 100, maximum: 100), spacing: 12.0)
    ]
    
    var body: some View {
        ScrollView{
            VStack (alignment: .leading){
                Text("Hi, Learners!")
                    .font(.title3)
                    .fontWeight(.regular)
                    
                    .foregroundColor(Color(red: 0.372, green: 0.437, blue: 0.318))
                Text("Let's take care your plant!")
    //                    .font(.system(size:25))
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding(.bottom,20)
                    .foregroundColor(Color(red: 0.372, green: 0.437, blue: 0.318))
                
                LazyVGrid(columns:columns){
                    ForEach(plants) { plant in
                        NavigationLink(destination: Description(plant: plant), label: {
                            VStack{
                                Image(plant.imageName)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 100.0, height: 100.0)
                                    .clipShape(Circle())
                                Text(plant.name)
                                    .foregroundColor(Color(red: 0.372, green: 0.437, blue: 0.318))
                                    .multilineTextAlignment(.center)
                            }
                        })
                        
                    }
                }
                .padding(.leading, -40)
                Spacer()
            }
            .padding(.leading, 30)
            .padding([.top, .bottom], 25)
            .safeAreaInset(edge: .bottom){
                HStack{
                    //                    Button{
                    //
                    //                    } label: {
                    //                        Image(systemName: "drop.fill")
                    //                            .foregroundColor(Color(red: 0.718, green: 0.669, blue: 0.67))
                    //                            .font(.system(size:40.0))
                    //                    }
                    
                    NavigationLink(destination: ChoosePlant(), label: {
                        Image("iconBtn")
                            .resizable()
                            .frame(width: 50, height: 30)
                        
                    })
                    .padding(.horizontal, 60)
                    
                    
                    NavigationLink(destination: ContentView(), label: {
                            Image(systemName: "cloud.sun.fill")
                                .font(.system(size:38.0))
                                .foregroundColor(Color(red: 0.718, green: 0.669, blue: 0.67))
                                .padding(.horizontal,55)
                   })
                
                    
                }
                .padding(.vertical)
                .frame(width: 350)
                .background(Color(red: 0.828, green: 0.848, blue: 0.821))
                .cornerRadius(20)
            }
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        
    }
}

struct ChoosePlant_Previews: PreviewProvider {
    static var previews: some View {
        ChoosePlant()
    }
}
