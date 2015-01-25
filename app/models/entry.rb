class Entry < ActiveRecord::Base
  mount_uploaders :images, G4uUploader

  validates :title, length: {maximum: 255}
  validates :body, length: {maximum: 255}
  validates :images, presence: true
  validate :validate_images

  def cover_image
    images[0]
  end

  private

  def validate_images
    width = 1280
    height = 720
    if Array(images).any?{|i| not i.width == width && i.height == height }
      errors.add :images, :dimension_equal_to, width: width, height: height
    end
    max_filesize = 1.megabyte
    if Array(images).any?{|i| i.file.size > max_filesize }
      errors.add :images, :file_size_less_than, size_kb: max_filesize / 1.kilobyte
    end
  end

end
