json.extract! post, :id, :title, :meta_title, :meta_description, :position, :created_at, :updated_at
json.url post_url(post, format: :json)
