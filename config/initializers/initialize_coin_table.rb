COIN_LIST = [
    {symbol:'BTC' , name: 'Bitcoin', icon_path: 'icons/btc.png'  },
    {symbol:'ETH' , name: 'Ethereum', icon_path: 'icons/eth_logo.png'  },
    {symbol:'BCH' , name: 'itcoin Cash / BCC', icon_path: 'icons/bch.jpg'  },
    {symbol:'XRP' , name: 'Ripple', icon_path: 'icons/ripple.png'  },
    {symbol:'LTC' , name: 'Litecoin', icon_path: 'icons/litecoin-logo.png'  }
]
def init_coin_table 
    COIN_LIST.each do |c|
        if not Coin.where(symbol: c[:symbol]).take
            Coin.create(c)
        end
    end
end

init_coin_table()
