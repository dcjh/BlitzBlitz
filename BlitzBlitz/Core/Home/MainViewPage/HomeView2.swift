//
//  HomeView2.swift
//  StudyTest
//
//  Created by Owen Nigel on 18/1/24.
//

import SwiftUI
import MapKit

struct HomeView2: View {
    @EnvironmentObject var viewModel: AuthViewModel
    @State var hideView: Bool = false
    @State private var textSwitch: Bool = false
    @State private var textSwitch2: Bool = false


    
    var body: some View {
        if let user = viewModel.currentUser {
            ZStack{
                Color(hex:"f6f6f6")
                
                
                if hideView {
                    if !textSwitch2{
                        MapView()
                            .onAppear {
                                DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                                    self.textSwitch2.toggle()
                                }
                            }
                    } else{
                        MapView2()
                    }
                }
                else{
                    MapView()
                }
                //MapView3()
                
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
                            Text("Welcome Back")
                                .font(Font.custom("Segoe", size: 14))
                            Text(user.fullname)
                              
                                .font(Font.system(size: 20, weight: .semibold))
                        }
                        //.cornerRadius(10)
                        .frame(width: 123, height: 49)
                        .padding(.top, 38)
                        Spacer()
                    }
                }
                .frame(width:393, height: 102)
                .background(.white)
                .padding(.bottom, UIScreen.main.bounds.height - 102)
                
                ZStack{ //Bottom Pull Up
                    Color(hex:"f6f6f6")
                    
                    if !hideView {
                        VStack{ // information
                            Text("Find a buddy now!")
                                .font(.system(size: 19, weight: .semibold, design: .default))
                            //.frame(width: 186, height: 30)
                                .padding(.bottom, 20)
                                .padding(.top,60)
                            
                            Button{
                                hideView = true
                            } label: {
                                Text("Match")
                                    .padding(.horizontal, 60)
                                    .padding(.vertical, 15)
                                    .background(Color(hex:"797EF6"))
                                    .foregroundColor(.white)
                                    .cornerRadius(10)
                                    .font(.system(size: 20, weight: .semibold, design: .default))
                            }
                            //.offset(y: 20)
                            //.frame(width: 229, height: 65)
                            
                            Spacer()
                        }
                    } else{
                        VStack {
                            if !textSwitch {
                                Image(systemName: "flashlight.off.fill")
                                    .resizable()
                                    .foregroundColor(.gray)
                                    .frame(width: 70, height: 150)
                                    .padding(20)
                                    .offset(y:15)
                                    .symbolEffect(.pulse)
                                
                                Text("Finding...")
                                    .padding(20)
                                    .foregroundColor(.black)
                                    .font(.system(size: 20, weight: .semibold, design: .default))
                            } else {
                                Text("YOOO")
                            }

                        }
                        .onAppear {
                            DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                                self.textSwitch.toggle()
                            }
                        }
                        .offset(y: -55)
                        
                    }
                }
                .cornerRadius(45)
                .frame(width: 393, height: 550)
                .offset(y:135)
                .shadow(radius: 20, y: 10)


            }
        }
    }
}
            
            
            
            
            
         /*   ZStack {

                MapView()
                
                ZStack{
                    Color.white
                        .cornerRadius(30)
                    VStack{
                        HStack{
                            Text("Welcome " + user.fullname)
                                .padding()
                                .font(.system(size: 23, weight: .semibold, design: .default))
                            Spacer()
                        }
                        .padding([.horizontal, .top], 20)
                        
                        Button(action: {
                            // Action to perform when the button is tapped
                        }) {
                            Label("MATCH", systemImage: "figure.socialdance")
                                .font(.system(size: 30))
                                .foregroundColor(.white)
                                .padding(20)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 7)
                                        .stroke(.white, lineWidth: 2)
                                )
                                .background(Color(hex:"797EF6"))
                                .foregroundColor(.black)
                        }.offset(y:-25)
                        
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(.white, lineWidth: 1)
                                .frame(width: 348, height: 340)
                                .padding()
                                .padding(.bottom, 10)
                            VStack{
                                Image(systemName: "person.fill.xmark")
                                    .padding()
                                    .font(.system(size: 35))
                                    .foregroundColor(.gray)
                                Text("You have no current match")
                                    .font(.system(size: 17, weight: .regular, design: .default))
                                    .foregroundColor(.gray)
                            }
                            
                        }
                        .offset(y: -20)
                    }
                    .background(Color(.systemGray6))
                }
                .offset(y: 302)


            }
        }
    }
}*/
            
#Preview {
    HomeView2()
        }
