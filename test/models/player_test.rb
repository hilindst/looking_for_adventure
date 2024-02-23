require 'rails_helper'

RSpec.describe Player, type: :model do
  it 'is valid with a username, password and email' do
    player = build(:player, password: 'password', email: 'drizzt@puma.com')
    expect(player).to be_valid
  end

  it 'is not valid without a username' do
    player = build(:player, username: nil)
    expect(user).not_to be_valid
  end

  it 'is not valid without an email' do
    player = build(:player, email: nil)
    expect(player).not_to be_valid
  end

# include test for bcrypt when ready
end