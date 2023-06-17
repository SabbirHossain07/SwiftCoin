//
//  HomeView.swift
//  SwiftCoin
//
//  Created by Sopnil Sohan on 15/6/23.
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel = HomeViewModel()
    
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [.blue.opacity(0.8),.purple.opacity(0.8)]), startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                
                ScrollView(.vertical, showsIndicators: false) {
                    //MARK: Top Moves
                    
                    TopMoversView(viewModel: viewModel)
                        .padding(.bottom, 10)
                    
                    //MARK: All Coin
                    
                    AllCoinsView(viewModel: viewModel)
                }
                .navigationTitle("Live Prices")
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
