class Review < ApplicationRecord
  #belongs_to :eatery
  #belongs_to :user
  mount_uploader :image_1, FilesUploader
  mount_uploader :image_2, FilesUploader
  mount_uploader :image_3, FilesUploader
  mount_uploader :image_4, FilesUploader
  mount_uploader :image_5, FilesUploader
  mount_uploader :image_6, FilesUploader
  mount_uploader :image_7, FilesUploader
  mount_uploader :image_8, FilesUploader
  mount_uploader :image_9, FilesUploader
  mount_uploader :image_10, FilesUploader
end
