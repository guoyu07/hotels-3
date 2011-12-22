class Account
  include Mongoid::Document

  field :name, type: String

  has_many :users

  embeds_many :hotels
end
