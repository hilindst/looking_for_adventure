require 'rails_helper'


RSpec.describe Player, type: :model do

  context 'Validation tests' do
  it 'is valid with a username, password and email' do
    player = Player.create(username: 'Drizzt', password: 'password', email: 'drizzt@puma.com')
    expect(player).to be_valid
  end

  it 'is not valid without a username' do
    player = Player.create(username: nil, password: 'password', email: 'drizzt@puma.com')
    expect(player).not_to be_valid
  end

  it 'is not valid without an email' do
    player = Player.create(username: 'Drizzt', password: 'password', email: nil)
    expect(player).not_to be_valid
  end

  it 'hashes the password using BCrypt' do
    player = create(:player, password: 'password')

    expect(player.password_digest).not_to eq 'password'

    expect(BCrypt::Password.new(player.password_digest)).to be_truthy

    expect(BCrypt::Password.new(player.password_digest).is_password?('password')).to be true
  end
end
end