class AddUploadedFileTable < ActiveRecord::Migration
  def change
    create_table :uploaded_files do |t|
      t.string :file_path
      t.string :ip

      t.timestamps
    end
  end
end
