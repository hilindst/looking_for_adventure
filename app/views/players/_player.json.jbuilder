json.extract! player, :id, :username, :password, :email, :created_at, :updated_at
json.url player_url(player, format: :json)
