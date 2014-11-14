# coding: utf-8
class R2eoallocatem < ActionMailer::Base
  default from: "R2system@r2.local"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.r2eoallocatem.sendeoallocatemail.subject
  #
  def sendeoallocatemail(emails, engineorder, user)
    #@greeting = "Hi"

    #mail to: "to@example.org"

    @user = user

    @engineorder = engineorder

    mail to: emails, subject: "【重要】R2システム（本社）からの引当登録通知です。"

    return self

  end
end
