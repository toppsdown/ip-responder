class UploadedFile < ActiveRecord::Base
  self.table_name = 'uploaded_files'

  def save_file!(given_file)
    filename = given_file.original_filename
    folder = "public/uploads"

    path = File.join(folder, filename)

    FileUtils.mkdir_p(folder)

    File.open(path, 'w') do |f|
      # files i'm testing with are binary so need to
      # use binary writing
      File.binwrite(f, given_file.tempfile.binmode.read)
    end

    update!(file_path: path)
  end
end
