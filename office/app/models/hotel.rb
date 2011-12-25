class Hotel
  include Mongoid::Document
  #include Mongoid::Symbolize
  #include Mongoid::Timestamps
  #include Mongoid::Paranoia

  field :name, type: String
  field :description, type: String
  field :website, type: String

  embeds_one :address, as: :addressable
  embeds_many :room_types

  embedded_in :account
end
