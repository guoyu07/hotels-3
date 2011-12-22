class Address
  include Mongoid::Document

  field :address, type: String
  field :city, type: String
  field :state, type: String
  field :zip_code, type: String
  field :country, type: String
  field :email, type: String
  field :phone, type: String
  field :fax, type: String

  embedded_in :addressable, polymorphic: true
end