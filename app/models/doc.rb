class Doc < ApplicationRecord
  mount_uploader :attachment, AttachmentUploader # Tells rails to use this uploader for this model.
  belongs_to :user
  
   validates :title, presence: true
   validates :description, presence: true
end
