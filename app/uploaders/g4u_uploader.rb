# encoding: utf-8

class G4uUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick

  storage :file
  # storage :fog

  def store_dir
    if model.is_a?(Entry)
      "uploads/#{model.id}"
    else
      "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
    end
  end

  version :thumb do
    process :resize_to_fit => [640, 360]
    process :quality => 40
  end

  def extension_white_list
    %w(jpg)
  end
end
