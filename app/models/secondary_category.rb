# class SecondaryCategory < ActiveHash::Base
#   self.data = [
#     { id: 1, name: '--' },
#     { id: 2, name: 'Tシャツ' },
#     { id: 3, name: 'ワンピース' },
#     { id: 4, name: 'トップス' },
#     { id: 5, name: 'シャツ・ブラウス' },
#     { id: 6, name: 'カーディガン' },
#     { id: 7, name: 'スウェット・パーカー' },
#     { id: 8, name: 'コート・ジャケット' },
#     { id: 9, name: 'パンツ' },
#     { id: 10, name: 'スカート' },
#     { id: 11, name: 'インナー・布ナプキン' },
#     { id: 12, name: '帽子' },
#     { id: 13, name: 'スカーフ・ストール' },
#     { id: 14, name: 'マフラー・ネックウォーマー' },
#     { id: 15, name: '靴' },
#     { id: 16, name: '靴下・タイツ' },
#     { id: 17, name: '傘・日傘' },
#     { id: 18, name: 'ハンカチ' },
#     { id: 19, name: 'ネイルチップ' },
#     { id: 20, name: 'コスチューム' },
#     { id: 21, name: '着物・和装' },
#     { id: 22, name: 'その他' },
#   ]

#   include ActiveHash::Associations
#   has_many :items

#   end