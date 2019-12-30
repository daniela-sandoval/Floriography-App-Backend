Datadog.configure do |c|
  c.use :rails, service_name: 'staging-rails-app'
end
