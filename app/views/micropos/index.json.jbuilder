json.array!(@micropos) do |micropo|
  json.extract! micropo, :content, :user_id
  json.url micropo_url(micropo, format: :json)
end