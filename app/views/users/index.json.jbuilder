json.array!(@users) do |user|
  json.extract! user, :id, :name, :email, :avatar, :phone, :address, :birthday, :facebook
  json.url user_url(user, format: :json)
end
