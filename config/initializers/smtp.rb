ActionMailer::Base.smtp_settings = {
      :address              => ENV['smtp_server'],
      :port                 => ENV['smtp_port'],
      :user_name            => ENV['smtp_user'],
      :password             => ENV['smtp_password'],
      :domain               => ENV['smtp_domain'],
      :authentication       => ENV['smtp_authentication']
}
