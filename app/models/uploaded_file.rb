class UploadedFile < ActiveRecord::Base
  self.table_name = 'uploaded_files'

  mount_uploader :file, FileUploader
end
