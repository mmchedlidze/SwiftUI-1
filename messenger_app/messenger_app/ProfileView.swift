//
//  ProfileView.swift
//  messenger_app
//
//  Created by Mariam Mchedlidze on 06.12.23.
//

import SwiftUI

struct ProfileView: View {
    @State private var nameInput: String = ""
    @State private var emailInput: String = ""
    @State private var passwordInput: String = ""
    @State private var dateInput: String = ""
    @State private var countryInput: String = ""
    let borderColor = Color(red: 84/255, green: 76/255, blue: 76/255, opacity: 0.14)
    let textColor = Color(red: 84/255, green: 76/255, blue: 76/255, opacity: 1)
    let texfieldMargins = (EdgeInsets (top: 8, leading: 16, bottom: 8, trailing: 16))
    
    var body: some View {
        VStack(spacing: 20) {
            HStack(spacing: 90) {
                Image(systemName: "chevron.backward")
                    .frame(width: 30, height: 30)
                
                Text("Edit Profile")
                    .font(.system(size: 20))
                    .bold()
                
                Spacer()
            }
            
            Image("profile 1")
                .resizable()
                .scaledToFill()
                .frame(width: 170, height: 172)
                .clipShape(Circle())
            
            VStack(alignment: .leading, spacing: 12) {
                
                Text("Name")
                    .font(.system(size: 16))
                    .bold()
                
                TextField("test", text: $nameInput)
                    .padding(texfieldMargins)
                    .background(RoundedRectangle(cornerRadius: 6).stroke(borderColor, lineWidth: 1))
                    .foregroundColor(textColor)
            }
            
            VStack(alignment: .leading, spacing: 12) {
                Text("Email")
                    .font(.system(size: 16))
                    .bold()
                
                TextField("test@gmail.com", text: $emailInput)
                    .padding(texfieldMargins)
                    .background(RoundedRectangle(cornerRadius: 6).stroke(borderColor, lineWidth: 1))
            }
            
            VStack(alignment: .leading, spacing: 12) {
                Text("Password")
                    .font(.system(size: 16))
                    .bold()
                
                TextField("**********", text: $passwordInput)
                    .padding(texfieldMargins)
                    .background(RoundedRectangle(cornerRadius: 6).stroke(borderColor, lineWidth: 1))
            }
            VStack(alignment: .leading, spacing: 12){
                Text("Date of Birth")
                    .font(.system(size: 16))
                    .bold()
                
                TextField("31/02/2000", text: $dateInput)
                    .padding(texfieldMargins)
                    .background(RoundedRectangle(cornerRadius: 6).stroke(borderColor, lineWidth: 1))
            }
            VStack(alignment: .leading, spacing: 12) {
                Text("Country/Region")
                    .font(.system(size: 16))
                    .bold()
                
                TextField("Georgia", text: $countryInput)
                    .padding(texfieldMargins)
                    .background(RoundedRectangle(cornerRadius: 6).stroke(borderColor, lineWidth: 1))
            }
            Button("Save Changes") {
            }
            .frame(width: 220 , height: 45)
            .background(Color(red: 36/255, green: 39/255, blue: 96/255, opacity: 1))
            .foregroundColor(.white)
            .cornerRadius(6)
        }
        .padding(24)
    }
}

#Preview {
    ProfileView()
}
