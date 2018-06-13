COIN_LIST = [
    {symbol:'BTC' , name: 'Bitcoin', icon_path: 'icons/btc.png'  },
    {symbol:'ETH' , name: 'Ethereum', icon_path: 'icons/eth_logo.png'  },
    {symbol:'BCH' , name: 'itcoin Cash / BCC', icon_path: 'icons/bch.jpg'  },
    {symbol:'XRP' , name: 'Ripple', icon_path: 'icons/ripple.png'  },
    {symbol:'LTC' , name: 'Litecoin', icon_path: 'icons/litecoin-logo.png'  }
]
<<<<<<< HEAD
def init_coin_table 
    COIN_LIST.each do |c|
=======
if Coin.table_exists?
    coin_list.each do |c|
>>>>>>> a8724fd735203bfdb7152cd33784c9d50d4c5e18
        if not Coin.where(symbol: c[:symbol]).take
            Coin.create(c)
        end
    end
end
<<<<<<< HEAD

init_coin_table()
=======
>>>>>>> a8724fd735203bfdb7152cd33784c9d50d4c5e18
