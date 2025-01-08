require "test_helper"
require "stringio"

class PaymentTest < ActiveSupport::TestCase
  test "assigns account id" do
    payment = Payment.new
    assert_equal @account.id, payment.account_id
  end

  test "assigns account object" do
    payment = Payment.new
    assert_equal @account, payment.account
  end

  test "performs the correct query" do
    log_output = StringIO.new
    ActiveRecord::Base.logger = Logger.new(log_output)
    payment = Payment.new
    payment.account
    log_output.rewind
    assert_match /SELECT \"accounts\".* FROM \"accounts\" WHERE \"accounts\".\"id\"/, log_output.read
  end
end
