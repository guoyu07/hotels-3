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
  embeds_one :photo, as: :photoable

  embedded_in :account

  validates_presence_of :name
end
