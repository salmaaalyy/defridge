//
//  ContentView.swift
//  De-Fridge
//
//  Created by Salma Aly on 10/22/22.
//

import SwiftUI
import Foundation

struct ContentView: View {
    var green = Color(red: 0.1961, green: 0.3255, blue: 0.2627)
    var orange = Color(red: 0.902, green: 0.525, blue: 0.2)
    var beige = Color(red: 0.957, green: 0.957, blue: 0.96)
    
    var body: some View {
        NavigationView {
            VStack{
                HStack{
                    Spacer()
                    
                    Text("Good Morning, Judges")
                    .font(.system(size: 35, weight: .bold, design: .default))
                    .padding(5.5)
                    
                    Image (systemName: "person.circle")
                    .resizable()
                    .frame(width: 60, height: 60, alignment: .center)
                    .padding()
                }
                // First Row
                HStack{
                    Spacer()
                    NavigationLink(destination: ScanView()) {
                        VStack{
                            Image(systemName: "barcode.viewfinder")
                            .resizable()
                            .frame(width: 100, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                            .padding()
                            .foregroundColor(Color.white)
                            Text("Scan")
                            .font(.system(size: 20, weight: .bold, design: .default))
                            .foregroundColor(Color.white)
                        }
                    }
                    .background(orange)
                    .cornerRadius(20)
                    Spacer()
                    
                    NavigationLink(destination: WalletView()) {
                        VStack{
                            Image("wallet")
                            .resizable()
                            .frame(width: 100, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                            .padding()
                            .foregroundColor(Color.white)
                            Text("Wallet")
                            .font(.system(size: 20, weight: .bold, design: .default))
                            .foregroundColor(Color.white)
                        }
                    }
                    
                    .background(green)
                    .cornerRadius(20)
                    Spacer()
                }
                .buttonStyle(.bordered)

                Spacer()
                
                // Second row
                HStack{
                    Spacer()
                    NavigationLink(destination: FridgeView()) {
                        VStack{
                            Image(systemName: "takeoutbag.and.cup.and.straw")
                            .resizable()
                            .frame(width: 100, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                            .padding()
                            .foregroundColor(Color.white)
                            Text("Fridge")
                            .font(.system(size: 20, weight: .bold, design: .default))
                            .foregroundColor(Color.white)
                        }
                    }
                    .background(green)
                    .cornerRadius(20)
                    
                    Spacer()
                    NavigationLink(destination: DonateView()) {
                        VStack{
                            Image(systemName: "heart.circle.fill")
                            .resizable()
                            .frame(width: 100, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                            .padding()
                            .foregroundColor(Color.white)
                            Text("Donate")
                            .font(.system(size: 20, weight: .bold, design: .default))
                            .foregroundColor(Color.white)
                        }
                    }
                    .background(orange)
                    .cornerRadius(20)
                    Spacer()
                }
                .buttonStyle(.bordered)
                // Third row
                HStack{
                    Spacer()
                    NavigationLink(destination: ShopView()) {
                        VStack{
                            Image(systemName: "cart")
                            .resizable()
                            .frame(width: 100, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                            .padding()
                            .foregroundColor(Color.white)
                            Text("Shop")
                            .font(.system(size: 20, weight: .bold, design: .default))
                            .foregroundColor(Color.white)
                        }
                    }
                    .background(orange)
                    .cornerRadius(20)
                    
                    Spacer()
                    
                    NavigationLink(destination: CookView()){
                        VStack{
                            Image(systemName: "book.closed")
                            .resizable()
                            .frame(width: 100, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                            .padding()
                            .foregroundColor(Color.white)
                            Text("Cook")
                            .font(.system(size: 20, weight: .bold, design: .default))
                            .foregroundColor(Color.white)
                        }
                    }
                    .background(green)
                    .cornerRadius(20)
                    Spacer()
                }
                .buttonStyle(.bordered)
                
                Spacer()
            }
            .background(beige)
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
