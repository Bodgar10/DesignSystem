//
//  Icons.swift
//
//
//  Created by Bodgar Espinosa Miranda on 12/08/24.
//

import SwiftUI

public enum CashIcons {
    case safeBox
    case dollarIn
    case dollarOut
    case poundSterlingIn
    case pundSterlingOut
    case bitcoinIn
    case bitcoinOut
    case mobilePayment
    case bank
    case exchange
    case dollar
    case growth
    case profit
    case losses
    case business
    case idea
    case exchangeCoin
    case certificate
    case moneyBag
    case invoice
    case salary
    case yen
    case returnMoney
    case mail
    case money
    case onlinePayment
    case moneyIn
    case moneyOut
    case protect
    case calculator
    case search
    case wallet
    case euro
    case balance
    case budget
    case balanceLosses
    case profitBalance
    case investment
    case cheque
    case profitEarn
    case piggy
    case atm
    case bill
    case arrowUp
    case arrowDown
    case creditCard
    case debitCard
    
    public var image: Image {
        switch self {
        case .safeBox:
            Image("001-safe-box", bundle: .module)
        case .dollarIn:
            Image("002-dollar", bundle: .module)
        case .dollarOut:
            Image("003-dollar", bundle: .module)
        case .poundSterlingIn:
            Image("004-pound-sterling", bundle: .module)
        case .pundSterlingOut:
            Image("005-pound-sterling", bundle: .module)
        case .bitcoinIn:
            Image("006-bitcoin", bundle: .module)
        case .bitcoinOut:
            Image("007-bitcoin", bundle: .module)
        case .mobilePayment:
            Image("008-mobile-payment", bundle: .module)
        case .bank:
            Image("009-bank", bundle: .module)
        case .exchange:
            Image("010-exchange", bundle: .module)
        case .dollar:
            Image("011-dollar", bundle: .module)
        case .growth:
            Image("012-growth", bundle: .module)
        case .profit:
            Image("013-profit", bundle: .module)
        case .losses:
            Image("014-losses", bundle: .module)
        case .business:
            Image("015-business", bundle: .module)
        case .idea:
            Image("016-idea", bundle: .module)
        case .exchangeCoin:
            Image("017-exchange", bundle: .module)
        case .certificate:
            Image("018-certificate", bundle: .module)
        case .moneyBag:
            Image("019-money-bag", bundle: .module)
        case .invoice:
            Image("020-invoice", bundle: .module)
        case .salary:
            Image("021-salary", bundle: .module)
        case .yen:
            Image("022-yen", bundle: .module)
        case .returnMoney:
            Image("023-return", bundle: .module)
        case .mail:
            Image("024-mail", bundle: .module)
        case .money:
            Image("025-money", bundle: .module)
        case .onlinePayment:
            Image("026-online-payment", bundle: .module)
        case .moneyIn:
            Image("027-money", bundle: .module)
        case .moneyOut:
            Image("028-money", bundle: .module)
        case .protect:
            Image("029-protect", bundle: .module)
        case .calculator:
            Image("030-calculator", bundle: .module)
        case .search:
            Image("031-search", bundle: .module)
        case .wallet:
            Image("032-wallet", bundle: .module)
        case .euro:
            Image("033-euro", bundle: .module)
        case .balance:
            Image("034-exchange", bundle: .module)
        case .budget:
            Image("035-budget", bundle: .module)
        case .balanceLosses:
            Image("036-losses", bundle: .module)
        case .profitBalance:
            Image("037-profit", bundle: .module)
        case .investment:
            Image("038-investment", bundle: .module)
        case .cheque:
            Image("039-cheque", bundle: .module)
        case .profitEarn:
            Image("040-profit", bundle: .module)
        case .piggy:
            Image("041-piggy-bank", bundle: .module)
        case .atm:
            Image("042-atm", bundle: .module)
        case .bill:
            Image("045-bill", bundle: .module)
        case .arrowUp:
            Image("flecha-hacia-arriba", bundle: .module)
        case .arrowDown:
            Image("flecha-hacia-abajo", bundle: .module)
        case .creditCard:
            Image("tarjeta-de-credito", bundle: .module)
        case .debitCard:
            Image("tarjeta-de-debito", bundle: .module)
        }
    }
    
}
