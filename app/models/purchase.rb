class Purchase < ActiveRecord::Base
  mount_uploader :attachment, AttachmentUploader
  validates_presence_of :attachment, presence: true
  has_many :comments

end
