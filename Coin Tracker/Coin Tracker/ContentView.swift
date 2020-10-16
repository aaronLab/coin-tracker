
import SwiftUI

struct ContentView: View {
    
    @ObservedObject private var vm = CoinListViewModel()
    
    init() {
        
//        UITableView.appearance().separatorStyle = .none
//        UITableView.appearance().backgroundColor = .clear
//        UITableViewCell.appearance().backgroundColor = .clear
//        UITableViewCell.appearance().selectionStyle = .none
        
        vm.getCoins()
    }
    
    var body: some View {
        ScrollView {
            ZStack {
                Color.base
                VStack {
                    VStack(alignment: .center) {
                        Text("Coin Tracker")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                            .padding(.top, 50)
                            .neumoriphicShadow()
                        
                        ForEach(vm.coins) { coin in
                            CoinCell(coin: coin)
                                .neumoriphicShadow()
                        }
                    }
                }
            }.padding(.bottom)
        }
        .edgesIgnoringSafeArea(.all)
        .background(Color.base)
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
