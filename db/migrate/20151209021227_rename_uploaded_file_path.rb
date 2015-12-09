class RenameUploadedFilePath < ActiveRecord::Migration
  def change
    rename_column :uploaded_files, :file_path, :file
  end
end
