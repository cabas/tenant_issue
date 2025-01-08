require "test_helper"

class External::TransactionTest < ActiveSupport::TestCase
  test "assigns account id" do
    transaction = External::Transaction.new
    assert_equal @account.id, transaction.account_id
  end

  test "assigns account object" do
    transaction = External::Transaction.new
    assert_equal @account, transaction.account
  end

  test "performs the correct query" do
    log_output = StringIO.new
    ActiveRecord::Base.logger = Logger.new(log_output)
    transaction = External::Transaction.new
    transaction.account
    log_output.rewind
    assert_match /SELECT \"accounts\".* FROM \"accounts\" WHERE \"accounts\".\"id\"/, log_output.read
  end
end
