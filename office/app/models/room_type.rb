class RoomType
  include Mongoid::Document
  #include Mongoid::Symbolize

  field :name, type: String
  field :description, type: String
  field :price, type: Float
  field :max_people, type: Integer

  embedded_in :hotel

  #TODO add options list and photos
end
