json.array!(@news) do |news|
  json.extract! news, :id, :title, :content, :admin_id
  json.url news_url(news, format: :json)
end
