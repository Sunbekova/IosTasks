//
//  ContentView.swift
//  I am Rich
//
//  Created by Aisha Suanbekova Bakytjankyzy on 23.09.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.34, green: 0, blue: 0)
                .ignoresSafeArea()
            
            ScrollView {
                VStack{
                    Image("Diamond_PNG")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 250, height: 250)
                        .padding()
                    
                    Text("I am Rich")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                    
                    Text("You are a real lucky man and a darling of fate, born under a lucky star. Luck and various benefits come into your hands by themselves. In an incomprehensible way, all the doors open, and others offer their support or favorable terms of cooperation. You are easy-going, pleasant to talk to, do not strive to be a leader. It's easy for you to work in a team, and energy and talent, along with luck, help you promote any project. You go through life easily, as if you are not straining at anything. Therefore, many people think that you are lazy. In fact, it is important for you to catch your energy wave (vocation, idea, business) and relentlessly follow it. Luck accompanies your environment, if you feel happy and comfortable in it. You are open to everything new, easily learn the necessary skills. You have a positive mindset and a cheerful, easy disposition. We are ready to share everything you have. They are open to people and kind-hearted.")
                        .font(.body)
                        .font(.system(size: 14))
                        .foregroundStyle(Color(white: 1))
                        .multilineTextAlignment(.center)
                        .padding()
                        .frame(maxWidth: .infinity)
                    
                    Spacer()
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
