class UploaderController < ApplicationController
  def index
    @files = UploadedFile.all

    render 'uploader'
  end

  def create
    f = UploadedFile.new({ip: request.ip})
    f.save_file!(params[:uploaded_file])

    @files = UploadedFile.all
    render 'uploader'
  end
end
