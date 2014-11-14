class R2eoshipm < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.r2eoshipm.sendeoshipmail.subject
  #
  def sendeoshipmail
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
