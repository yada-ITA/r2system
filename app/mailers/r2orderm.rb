# coding: utf-8
class R2orderm < ActionMailer::Base
  default from: "csr2yes@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  # 
  #   en.r2orderm.r2orderm.subject
  #
  def r2orderm(emails, engineorder, user)
   # @greeting = "Hi"

    #mail to: "to@example.org"

    @user = user

    @engineorder = engineorder

    mail to: emails, subject: "【重要】R2システムからの受注登録通知です！"

    return self

  end
  
end
