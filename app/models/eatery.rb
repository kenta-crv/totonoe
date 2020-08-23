class Eatery < ApplicationRecord
  mount_uploader :image_1, ImagesUploader
  mount_uploader :image_2, ImagesUploader
  mount_uploader :image_3, ImagesUploader
  mount_uploader :image_4, ImagesUploader
  mount_uploader :image_5, ImagesUploader
  mount_uploader :image_6, ImagesUploader
  mount_uploader :image_7, ImagesUploader
  mount_uploader :image_8, ImagesUploader
  mount_uploader :image_9, ImagesUploader
  mount_uploader :image_10, ImagesUploader
  has_many :reviews
end
