# coding: utf-8
class R2eoreturnm < ActionMailer::Base
   default from: "yescsr2@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.r2eoreturnm.sendeoreturnmail.subject
  #
  def sendeoreturnmail(emails, engineorder, user)
  
    @user = user

    @engineorder = engineorder

     mail to: emails, subject: "【重要】R2システムからのエンジン返却登録完了の通知です。"

     return self

  end
end
