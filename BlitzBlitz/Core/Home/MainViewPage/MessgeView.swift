//
//  MessgeView.swift
//  BlitzBlitz
//
//  Created by Darrick Chew on 21/1/24.
//

import SwiftUI

struct MessgeView: View {
    @State private var messageContent: String = ""
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
            ZStack{
                Color(hex:"f6f6f6")
                
                ZStack{ //Top Box
                    HStack{
                        Image(systemName: "person.crop.circle.fill")
                            .resizable()
                            .foregroundColor(.gray)
                            .frame(width: 55, height: 55)
                            .padding(.vertical)
                            .padding(.horizontal,3)
                            .offset(x: 8, y:15)
                        
                        VStack (alignment: .leading){ //welcome back msg

                            Text("Darrick Chew")
                            
                                .font(Font.system(size: 24, weight: .semibold))
                                .offset(x: 12,y:-5)
                        }
                        //.cornerRadius(10)
                        .frame(width: 160, height: 49)
                        .padding(.top, 38)
                        Spacer()
                    }
                }
                .frame(width:393, height: 102)
                .background(.white)
                .padding(.bottom, UIScreen.main.bounds.height - 102)
                VStack{
                    //TextField(title: "Type your message here", text: $messageContent)
//                    Text("Enter message here")
//                        .frame(maxWidth: .infinity)
//                        .background(Color(.systemGray3))
//                        .offset(y:325)

                    TextField("Enter message", text:$messageContent)
                        .padding(15)
                        .frame(maxWidth: .infinity)
                                            .background(Color(.systemGray4))
                                            .offset(y:325)
                                         
                }
            }
        
    }
}



#Preview {
    MessgeView()
}
