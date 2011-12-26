class Photo
  include Mongoid::Document

  mount_uploader :file, ::PhotoUploader

  embedded_in :photoable, polymorphic: true
end
