class PrimaryCategory < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'アクセサリー' },
    { id: 3, name: 'ファッション' },
    { id: 4, name: 'マスク' },
    { id: 5, name: 'バック・財布・小物' },
    { id: 6, name: 'スマホケース・モバイルグッズ' },
    { id: 7, name: '家具・生活雑貨' },
    { id: 8, name: '食器・キッチン' },
    { id: 9, name: '文房具・ステーショナリー' },
    { id: 10, name: 'ニット・編み物' }
    { id: 11, name: '陶器・ガラス・食器' }
    { id: 12, name: 'アート・写真' }
    { id: 13, name: 'ベビー・キッズ' }
    { id: 14, name: 'ぬいぐるみ・人形' }
    { id: 15, name: 'おもちゃ' }
    { id: 16, name: 'ペットグッズ' }
    { id: 17, name: 'アロマ・キャンドル' }
    { id: 18, name: 'フラワー・ガーデン' }
    { id: 19, name: '素材・道具' }
    { id: 20, name: '手作りキット' }
  ]

  include ActiveHash::Associations
  has_many :items

  end