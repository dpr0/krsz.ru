class Attach < ApplicationRecord
  belongs_to :attachable, polymorphic: true

  mount_uploader :file, CkeditorAttachmentFileUploader
end
