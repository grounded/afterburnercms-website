require 'abc-adapters'
require 'adapters/persistence/repositories/base'

module Repositories
  class EmailSignup < Abc::Adapters::Persistence::Repositories::Base
    protected
    def kind
      :email_signup
    end
  end
end
