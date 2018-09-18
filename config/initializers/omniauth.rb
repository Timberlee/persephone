
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['FACEBOOK_APP_ID'], ENV['FACEBOOK_SECRET'],
    client_options: {
      site: 'https://graph.facebook.com/v3.1',
      authorize_url: "https://www.facebook.com/v3.1/dialog/oauth"
    },
    scope: 'email', display: 'popup'
end
