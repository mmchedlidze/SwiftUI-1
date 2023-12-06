//
//  ChatView.swift
//  messenger_app
//
//  Created by Mariam Mchedlidze on 06.12.23.
//

import SwiftUI
struct ChatInfo: Identifiable {
    var id = UUID()
    var imageName: String
    var name: String
    var text: String
    var time: String
}

struct ChatView: View {
    
    @State private var chat = [
        ChatInfo(imageName: "chat1", name: "Francisco Miles", text: "I went there yesterday", time: "18:14"),
        ChatInfo(imageName: "chat2", name: "Arlene Fisher", text: "IDK what else is there to do", time: "22:31"),
        ChatInfo(imageName: "chat3", name: "Darlene Hawkins", text: "No, I can't come tomorrow", time: "09:18"),
        ChatInfo(imageName: "chat4", name: "Eduardo Mckinney", text: "Go to hell", time: "Yesterday"),
        ChatInfo(imageName: "chat5", name: "Aubrey Cooper", text: "I hope it goes well.", time: "Friday"),
        ChatInfo(imageName: "chat6", name: "Jorge Nguyen", text: "So, what's your plan this weekend", time: "Thurday"),
        ChatInfo(imageName: "chat7", name: "Cody Cooper", text: "What's the progress on that task?", time: "Tuesday"),
        ChatInfo(imageName: "chat8", name: "Kristin Pena", text: "Yeah! You're right.", time: "7/22/20"),
        ChatInfo(imageName: "chat9", name: "Brandie Watson", text: "I went there yesterday", time: "8/19/20"),
        ChatInfo(imageName: "chat10", name: "Stella Henry", text: "Martinique", time: "9/15/20")
    ]
    
    
    @State private var chatRestore: [ChatInfo] = []
    
    
    var body: some View {
        
        if chat.isEmpty {
            
            VStack(alignment: .center, spacing: 20) {
                
                Text("No messages")
                
                Button("Restore Chat") {
                    chat = chatRestore
                }
                .frame(width: 220 , height: 45)
                .background(Color(red: 36/255, green: 39/255, blue: 96/255, opacity: 1))
                .foregroundColor(.white)
                .cornerRadius(6)
            }
            
        } else {
            VStack(spacing: 20) {
                Text("Chat")
                    .font(.system(size: 20))
                    .bold()
                
                ScrollView(.vertical) {
                    
                    ForEach(chat) { chat in
                        VStack(alignment: .leading) {
                            
                            HStack(spacing: 20){
                                Image(chat.imageName)
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                    .clipShape(Circle())
                                
                                VStack(alignment: .leading,spacing: 4){
                                    Text(chat.name)
                                        .font(.headline)
                                    
                                    Text(chat.text)
                                        .font(.subheadline)
                                    .foregroundColor(.gray)}
                                
                                Spacer()
                                
                                Text(chat.time)
                                    .foregroundColor(.gray)
                            }
                            
                            Divider()
                        }
                    }
                }
                
                Button("Clear Chat") {
                    chat.removeAll()
                }
                .frame(width: 220 , height: 45)
                .background(Color(red: 36/255, green: 39/255, blue: 96/255, opacity: 1))
                .foregroundColor(.white)
                .cornerRadius(6)
            }
            
            .padding(.horizontal, 20)
            .onAppear {
                chatRestore = chat
            }
        }
        
    }
    
}

#Preview {
    ChatView()
}
