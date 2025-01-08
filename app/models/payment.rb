class Payment < ApplicationRecord
  acts_as_tenant :account
end
