class User < ApplicationRecord

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :addresses, dependent: :destroy
  has_one  :profile,   dependent: :destroy
  has_one  :credit_card
  has_many :items,     dependent: :destroy
  has_one  :profile,   dependent: :destroy

  validates :firstname, :lastname, :firstname_kana, :lastname_kana, :nickname, :birth_year, :birth_month, :birth_day, presence: true

  validates :nickname          , length: { maximum: 8 }
  validates :firstname         , format: {with: /\A[ぁ-んァ-ン一-龥]/} # 全角漢字、ひらがな、カナ指定
  validates :lastname          , format: {with: /\A[ぁ-んァ-ン一-龥]/}
  validates :firstname_kana    , format: {with: /\A[ァ-ヶー－]+\z/}  #全角カナ指定
  validates :lastname_kana     , format: {with: /\A[ァ-ヶー－]+\z/}
  validates :birth_year        , format: {with: /\A\d{4}\z/} #4桁の数字でなけれなならない
  validates :birth_month       , numericality: {only_integer: true, greater_than: 0, less_than: 13} #1〜12の整数指定
  validates :birth_day         , numericality: {only_integer: true, greater_than: 0, less_than: 32}

end