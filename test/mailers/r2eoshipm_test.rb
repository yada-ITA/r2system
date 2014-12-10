require 'test_helper'

class R2eoshipmTest < ActionMailer::TestCase
  test "sendeoshipmail" do
    mail = R2eoshipm.sendeoshipmail
    assert_equal "Sendeoshipmail", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
