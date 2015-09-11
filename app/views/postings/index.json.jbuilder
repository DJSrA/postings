json.array!(@postings) do |posting|
  json.extract! posting, :id, :user_id, :companies_id
  json.url posting_url(posting, format: :json)
end
