class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  def auto_orient
    manipulate! do |img|
      img.auto_orient
      img
    end
  end

  process :auto_orient

end
