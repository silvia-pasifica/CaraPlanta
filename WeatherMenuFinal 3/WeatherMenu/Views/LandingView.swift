//
//  LandingView.swift
//  PlantNano1
//
//  Created by Silvia Pasica on 26/03/23.
//

import SwiftUI

struct LandingView: View {
    
    var body: some View {
        VStack{
            Spacer()
            Image("Caraplanta3")
               
            VStack{
                Text("Happy Plant, Happy Me")
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .fontWeight(.semibold)
                    .foregroundColor(Color(red: 0.372, green: 0.437, blue: 0.322))
                    .padding(.bottom, 8)
                    .padding(.leading, 8)
                
                Text("Grow together with you is the best thing")
                    .font(.system(size: 18))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .fontWeight(.semibold)
                    .foregroundColor(Color(red: 0.372, green: 0.437, blue: 0.322))
                    .padding(.leading, 8)
                    .padding(.bottom, 50)
                
                NavigationLink(destination: ChoosePlant(), label: {
//                    Button("Get started"){
//
//                    }
                    Text("Get started")
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .frame(width: 280)
                        .padding()
                        .background(Color(red: 0.643, green: 0.744, blue: 0.486))
                        .cornerRadius(10)
                        .navigationBarTitle("")
                        .navigationBarHidden(true)
                        .navigationBarBackButtonHidden(true)
                })
                
            }
            .padding(.top, 100)
            .padding(.horizontal)
            
           
        }
        .frame(width: .infinity, height: .infinity)
        .background(Color(red: 0.969, green: 0.969, blue: 0.969))
    }
        
}

struct LandingView_Previews: PreviewProvider {
    static var previews: some View {
        LandingView()
            
            
    }
}
