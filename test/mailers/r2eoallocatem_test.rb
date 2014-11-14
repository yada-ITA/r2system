require 'test_helper'

class R2eoallocatemTest < ActionMailer::TestCase
  test "sendeoallocatemail" do
    mail = R2eoallocatem.sendeoallocatemail
    assert_equal "Sendeoallocatemail", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
