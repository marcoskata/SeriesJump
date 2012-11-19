Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, "48kuasQrAMR0fN5tBOEfA", "yeQ76A1XT9Id0AUFlrzYtCnEgMc58TIIGb17fg2EWI"
  provider :facebook, "469542359751909", "89c99ee5e1fafdbf5b133cd01eee9632"
end
