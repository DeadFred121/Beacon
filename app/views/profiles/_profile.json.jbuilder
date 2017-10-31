json.extract! profile, :id, :name, :avatar, :default_region_id, :default_platform_id, :created_at, :updated_at
json.url profile_url(profile, format: :json)
