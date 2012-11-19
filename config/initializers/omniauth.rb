Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '469542359751909', '89c99ee5e1fafdbf5b133cd01eee9632'
end
