require 'rails_helper'

RSpec.describe Entry, :type => :model do
  it { expect(build(:entry)).to be_valid }

  it '1280x720 でない画像は不可' do
    entry = build(:entry, images: [upload('1281x721.jpg')])
    expect(entry.valid?).to eq false
    expect(entry.errors[:images]).to include(
      I18n.t('errors.messages.dimension_equal_to', width: 1280, height: 720))
  end
end
