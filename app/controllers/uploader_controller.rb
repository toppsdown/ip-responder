class UploaderController < ApplicationController
  def index
    @files = UploadedFile.all

    render 'uploader'
  end

  def create
    f = UploadedFile.new({ip: request.ip, file: params[:uploaded_file]})
    f.save!

    @files = UploadedFile.all
    render 'uploader'
  end
end
