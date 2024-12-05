# frozen_string_literal: true
return unless Rails.env.local?

Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'http://localhost:6006', 'http://127.0.0.1:6006'

    resource '*',
             headers: :any,
             methods: %i[get post put patch delete options head],
             credentials: true,
             max_age: 86_400
  end
end
