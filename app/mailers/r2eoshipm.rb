# coding: utf-8
class R2eoshipm < ActionMailer::Base
   default from: "yescsr2@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.r2eoshipm.sendeoshipmail.subject
  #
  def sendeoshipmail(emails, engineorder, user)
  #@greeting = "Hi"
  #mail to: "to@example.org"

  @user = user

  @engineorder = engineorder

  mail to: emails, subject: "【重要】R2システム（整備会社）からの出荷登録完了の通知です。"

  return self

  end
end
