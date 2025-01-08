class External::Transaction < ApplicationRecord
  acts_as_tenant :account
end
