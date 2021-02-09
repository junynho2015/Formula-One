//
//  ContentView.swift
//  FormulaOne
//
//  Created by Olimpio Junior on 04/02/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
    
   
        NavigationView{
            
            VStack{
            
            HomeView()
            
            NavigationLink(destination: ListView()){
                
                Image("icons")
                    .resizable()
                    .frame(width: 220, height: 40).clipped()
                    .aspectRatio(contentMode: .fill)
                    .cornerRadius(15)
                    .shadow(color: .black, radius: 10,x: 0.0, y: 0.0)
                    .padding()
            }
           }
            
            
        }
        
    }
        
   
        
    }
   


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HomeView: View {
    var body: some View {
        
        VStack{
            
            Text("Formula 1 - Champions")
                .fontWeight(.bold)
                .font(.title)
            
            Image("Formula1")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 250.0, height: 250.0, alignment: .center)
                .clipShape(Circle())
            
            
            Text("Since its beginnig in 1950, Fromula 1 has been exhibiting big names in motorsport, here we select all ofyou, come in and check it out!!!")
                .font(.headline)
                .multilineTextAlignment(.center)
                .padding()
    }
}
}
