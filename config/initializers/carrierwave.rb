module CarrierWave
  module MiniMagick
    # https://github.com/carrierwaveuploader/carrierwave/wiki/How-to:-Specify-the-image-quality
    def quality(percentage)
      manipulate! do |img|
        img.quality(percentage.to_s)
        img = yield(img) if block_given?
        img
      end
    end

    # url を開こうとして死んでいた
    def mini_magic_image
      ::MiniMagick::Image.open(current_path)
    end
  end
end
CarrierWave::SanitizedFile.sanitize_regexp = /[^[:word:]\.\-\+]/
