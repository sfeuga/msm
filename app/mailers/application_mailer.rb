# frozen_string_literal: true

###
# ApplicationMailer Class
#
class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'
end
