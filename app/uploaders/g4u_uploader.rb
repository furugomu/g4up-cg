# encoding: utf-8

class G4uUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick

  storage :file
  # storage :fog

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  version :thumb do
    process :resize_to_fit => [640, 320]
    # TODO 画質を20くらいにしたい
    process :quality => 10
  end

  version :thumb2 do
    process :resize_to_fit => [640, 320]
    process :quality => 100
  end

  def extension_white_list
    %w(jpg)
  end
end
