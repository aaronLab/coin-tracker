
import Foundation
import Combine

class CoinListViewModel: ObservableObject {

    @Published var coins = [CoinViewModel]()

    private let coinService = CoinService()

    var cancellable: AnyCancellable?

    func getCoins() {

        guard let getCoins = coinService.getCoins() else {
            print("No Data")
            return
        }

        cancellable = getCoins.sink { err in
            print(err)
        } receiveValue: { coinRes in
            self.coins = coinRes.data.coins.map { CoinViewModel($0) }
        }


    }

}
