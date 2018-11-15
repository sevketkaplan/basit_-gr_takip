require 'test_helper'

class TwilioControllerTest < ActionDispatch::IntegrationTest
  test "should get sms" do
    get twilio_sms_url
    assert_response :success
  end

end
