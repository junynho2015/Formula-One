//
//  LoginView.swift
//  FormulaOne
//
//  Created by Olimpio Junior on 09/02/21.
//

import SwiftUI

let ColorLight = Color(red: 239.0/255/0, green: 243.0/255.0, blue: 244.0/255.0)

struct LoginView: View {
    
     var username: String = " "
     var password: String = " "

    
    var body: some View {
        
        VStack{
            HelloText()
            ImageLogo()
            TextField("username", text: $username)
                .padding()
                .background(ColorLight)
                .cornerRadius
            

            

            
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}


struct HelloText: View {
    var body: some View{
        Text("Hello You!")
            .font(.largeTitle)
            .fontWeight(.semibold)
            .padding(.bottom, 20)
    }
}


struct ImageLogo: View {
    var body: some View{
        Image("logo")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 150, height: 150)
            .clipped()
            .cornerRadius(150)
            .padding(.bottom, 75)
    }

}
