json.array!(@topics) do |topic|
  json.extract! topic, :title, :content, :user_id
  json.url topic_url(topic, format: :json)
end
