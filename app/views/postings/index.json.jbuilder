json.array!(@postings) do |posting|
  json.extract! posting, :id, :recruiter_id, :companies_id
  json.url posting_url(posting, format: :json)
end
