require 'rails_helper'



describe Message do

  describe '#create' do
    it 'is valid without image' do
    message = build(:message,image: nil)
    expect(message).to be_valid
    end

    it 'is valid without message' do
      message = build(:message, body: nil)
      expect(message).to be_valid
    end

    it 'is good message-term' do
      message = build(:message)
      expect(message).to be_valid
    end

    it 'is invalid without body&image' do
      message = build(:message, body: nil, image: nil)
      message.valid?
      expect(message.errors[:body]).to include("を入力してください。")
    end

    it 'is invalid without group_id' do
    message = build(:message, group_id: nil)
    message.valid?
    expect(message.errors[:group_id]).to be_empty
    end

    it 'is invalid without user_id' do
      message = build(:message, user_id: nil)
      message.valid?
      expect(message.errors[:user_id]).to be_empty
    end
  end
end

