module UploadHelper
  def upload(filename)
    Rack::Test::UploadedFile.new(Rails.root.join('spec/files', filename))
  end
end
RSpec.configure do |config|
  config.include UploadHelper
  config.extend UploadHelper
end
