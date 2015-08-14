json.array!(@notices) do |notice|
  json.extract! notice, :id, :name, :body
  json.url notice_url(notice, format: :json)
end
