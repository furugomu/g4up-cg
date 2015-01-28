FactoryGirl.define do
  factory :entry do
    sequence(:title) {|n| "entry title #{n}" }
    sequence(:body) {|n| "entry body #{n}" }
    images {
      [
        Rack::Test::UploadedFile.new(Rails.root.join('spec/files/imas9393.jpg')),
      ]
    }
  end
end
