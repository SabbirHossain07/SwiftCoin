//
//  AllCoinsView.swift
//  SwiftCoin
//
//  Created by Sopnil Sohan on 17/6/23.
//

import SwiftUI

struct AllCoinsView: View {
    @StateObject var viewModel: HomeViewModel
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("All Coins")
                .font(.headline)
                .padding()
            HStack {
                Text("Coin")
                    .font(.caption)
                    .foregroundColor(.black.opacity(0.7))
                Spacer()
                
                Text("Price")
                    .font(.caption)
                    .foregroundColor(.black.opacity(0.7))
            }
            .padding(.horizontal)
            
            ScrollView {
                VStack {
                    ForEach(viewModel.coins) { coin in
                        CoinRowView(coin: coin)
                    }
                }
            }
        }
    }
}

//struct AllCoinsView_Previews: PreviewProvider {
//    static var previews: some View {
//        AllCoinsView()
//    }
//}
