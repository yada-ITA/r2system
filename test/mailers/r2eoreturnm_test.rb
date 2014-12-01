require 'test_helper'

class R2eoreturnmTest < ActionMailer::TestCase
  test "sendeoreturnmail" do
    mail = R2eoreturnm.sendeoreturnmail
    assert_equal "Sendeoreturnmail", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
