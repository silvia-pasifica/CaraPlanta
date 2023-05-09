//
//  Description.swift
//  PlantNano1
//
//  Created by Silvia Pasica on 22/03/23.
//

import SwiftUI
import UserNotifications

struct Description: View {
    var plant: Plant
    
   
    
    var body: some View {
        List{
            VStack{
                VStack(alignment: .leading){
                    HStack{
                        Image(plant.imageName)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                            .clipShape(Circle())
                            .padding(.top)
                            .padding(.bottom, 25)
                        VStack{
                            Text(plant.name)
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(Color(red: 0.372, green: 0.437, blue: 0.322))
                                .shadow(color: Color(red: 0.786, green: 0.776, blue: 0.776), radius: 2, x:0, y:2)
                            Text(plant.latinName)
                                .font(.headline)
                                .fontWeight(.light)
                                .foregroundColor(Color(red: 0.372, green: 0.437, blue: 0.322))
                                .padding(.bottom, 8)
                            Text(plant.level)
                                .fontWeight(.regular)
                                .padding(.horizontal)
                                .frame(height: 25.0)
                                .background(plant.levelColor)
                                .cornerRadius(20)
                        }
                        .padding(.leading, 16)
                        Spacer()
                    }
                    Text(plant.description)
                        .font(.body)
                        .fontWeight(.medium)
                        .foregroundColor(Color(red: 0.372, green: 0.437, blue: 0.322))
                        .padding(.top, 4)
                        .padding(.horizontal, 6)
                        .padding(.bottom)
                }
                .padding()
                .background(.white)
                .cornerRadius(30)
                .padding(.vertical)
                .padding(.horizontal, 20)
                
                //row 1
                HStack{
                    VStack{
                        Image(systemName: "sun.max.circle")
                            .foregroundColor(Color(red: 0.632, green: 0.672, blue: 0.615))
                            .font(.system(size:30.0))
                        VStack{
                            Text("Sun")
                                .font(.system(size: 12))
                                .fontWeight(.semibold)
                                .foregroundColor(Color(red: 0.373, green: 0.438, blue: 0.322))
                            Text(plant.sun)
                                .font(.system(size: 14))
                                .fontWeight(.regular)
                                .foregroundColor(Color(red: 0.373, green: 0.438, blue: 0.322))
                                .multilineTextAlignment(.center)
                        }.padding([.horizontal, .vertical],2)
                    }
                    .frame(width: 115, height: 115)
                    .background(.white)
                    .cornerRadius(15)
                    Spacer()
                    VStack{
                        Image(systemName: "thermometer.transmission")
                            .foregroundColor(Color(red: 0.632, green: 0.672, blue: 0.615))
                            .font(.system(size:30.0))
                        VStack{
                            Text("Temperature")
                                .font(.system(size: 12))
                                .fontWeight(.semibold)
                                .foregroundColor(Color(red: 0.373, green: 0.438, blue: 0.322))
                            Text(plant.temperature)
                                .font(.system(size: 14))
                                .fontWeight(.regular)
                                .foregroundColor(Color(red: 0.373, green: 0.438, blue: 0.322))
                                .multilineTextAlignment(.center)
                        }.padding([.horizontal, .vertical],2)
                    }
                    .frame(width: 115, height: 115)
                    .background(.white)
                    .cornerRadius(15)
                    Spacer()
                    VStack{
                        Image(systemName: "drop.circle")
                            .foregroundColor(Color(red: 0.632, green: 0.672, blue: 0.615))
                            .font(.system(size:30.0))
                        VStack{
                            Text("Water")
                                .font(.system(size: 12))
                                .fontWeight(.semibold)
                                .foregroundColor(Color(red: 0.373, green: 0.438, blue: 0.322))
                            Text(plant.water)
                                .font(.system(size: 14))
                                .fontWeight(.regular)
                                .foregroundColor(Color(red: 0.373, green: 0.438, blue: 0.322))
                                .multilineTextAlignment(.center)
                                
                        }.padding([.horizontal, .vertical],2)
                    }
                    .frame(width: 115, height: 115)
                    .background(.white)
                    .cornerRadius(15)
                }
                .padding(.horizontal, 16)
                
                //row2
                HStack{
                    VStack{
                        Image(systemName: "wave.3.right.circle")
                            .foregroundColor(Color(red: 0.632, green: 0.672, blue: 0.615))
                            .font(.system(size:30.0))
                        VStack{
                            Text("Soil")
                                .font(.system(size: 12))
                                .fontWeight(.semibold)
                                .foregroundColor(Color(red: 0.373, green: 0.438, blue: 0.322))
                            Text(plant.soil)
                                .font(.system(size: 14))
                                .fontWeight(.regular)
                                .foregroundColor(Color(red: 0.373, green: 0.438, blue: 0.322))
                                .multilineTextAlignment(.center)
                        }.padding([.horizontal, .vertical],2)
                    }
                    .frame(width: 115, height: 115)
                    .background(.white)
                    .cornerRadius(15)
                    Spacer()
                    VStack{
                        Image(systemName: "heart.circle")
                            .foregroundColor(Color(red: 0.632, green: 0.672, blue: 0.615))
                            .font(.system(size:30.0))
                        VStack{
                            Text("Nutrition")
                                .font(.system(size: 12))
                                .fontWeight(.semibold)
                                .foregroundColor(Color(red: 0.373, green: 0.438, blue: 0.322))
                            Text(plant.love)
                                .font(.system(size: 14))
                                .fontWeight(.regular)
                                .foregroundColor(Color(red: 0.373, green: 0.438, blue: 0.322))
                                .multilineTextAlignment(.center)
                        }.padding([.horizontal, .vertical],2)
                    }
                    .frame(width: 115, height: 115)
                    .background(.white)
                    .cornerRadius(15)
                    Spacer()
                    VStack{
                        Image(systemName: "camera.macro.circle")
                            .foregroundColor(Color(red: 0.632, green: 0.672, blue: 0.615))
                            .font(.system(size:30.0))
                        VStack{
                            Text("Harvest Time")
                                .font(.system(size: 12))
                                .fontWeight(.semibold)
                                .foregroundColor(Color(red: 0.373, green: 0.438, blue: 0.322))
                            Text(plant.harvestTime)
                                .font(.system(size: 14))
                                .fontWeight(.regular)
                                .foregroundColor(Color(red: 0.373, green: 0.438, blue: 0.322))
                                .multilineTextAlignment(.center)
                                
                        }.padding([.horizontal, .vertical],2)
                    }
                    .frame(width: 115, height: 115)
                    .background(.white)
                    .cornerRadius(15)
                }
                .padding(.horizontal, 16)
                .padding(.vertical,8)
                
                //row3
                HStack{
                    HStack{
                        Image(systemName: "wrongwaysign")
                            .foregroundColor(Color(red: 0.632, green: 0.672, blue: 0.615))
                            .font(.system(size:30.0))
                        VStack(alignment: .leading){
                            Text("Pest")
                                .font(.system(size: 12))
                                .fontWeight(.semibold)
                                .foregroundColor(Color(red: 0.373, green: 0.438, blue: 0.322))
                            Text(plant.pest)
                                .font(.system(size: 14))
                                .fontWeight(.regular)
                                .foregroundColor(Color(red: 0.373, green: 0.438, blue: 0.322))
                        }.padding([.horizontal, .vertical],2)
                        Spacer()
                    }
                    .padding(.horizontal)
                    .frame(width: 355, height: 80)
                    .background(.white)
                    .cornerRadius(15)
                    
                    
                }
                .padding(.horizontal, 20)
                .padding(.bottom, 16)
                
                LocalNotification()
                    .listRowSeparator(.hidden)
                
                Spacer()
            }
            .background(Color(red: 0.969, green: 0.969, blue: 0.969))
            .listRowSeparator(.hidden)
            .padding(.vertical, -5.0)
//            .frame(width: .infinity, height: .infinity)
            
        }
        .listStyle(.plain)
        .background(Color(red: 0.969, green: 0.969, blue: 0.969))
            
        
        
       
        
    }
 
}

struct Description_Previews: PreviewProvider {
    static var previews: some View {
        Description(plant: PlantList.seed.first!)
    }
}
