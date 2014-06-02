OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, 'ID_HERE', 'SECRET_HERE',  { :scope => "publish_stream, offline_access, email" }
end