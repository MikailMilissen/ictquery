json.extract! job_seeker, :id, :user_namer, :first_name, :last_name, :email, :created_at, :updated_at
json.url job_seeker_url(job_seeker, format: :json)
