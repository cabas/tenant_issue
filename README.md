# ActsAsTenant issue

This is a project to replicate an issue with acts_as_tenant gem when defining a model with the same name than a tenant model inside a namespace.

## Description

Here we define a model named `Account` that will act as the tenant, it also defines two models that are tested:

- Payment - (test/models/payment_test.rb)
- External::Transaction - (test/models/external/transaction_test.rb)

Each of these makes use of acts_as_tenant.

If we later add an additional model `External::Account` it makes the `External::Transaction` model to not assign the tenant correctly, moreover it assigns the `account_id` but when accessing the `account` object it returns nil.

If you delete the `app/models/external/account.rb` file the tests pass correctly.
