json.array!(@entries) do |entry|
  json.extract! entry, :title, :description, :topic_id, :user_id
  json.url entry_url(entry, format: :json)
end
