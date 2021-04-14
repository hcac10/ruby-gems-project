class ApplicationMailer < ActionMailer::Base
  default from: 'support@corsego.herokuapp.com'
  # comment #
  layout 'mailer'
end
