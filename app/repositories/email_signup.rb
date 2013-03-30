require 'abc-adapters'
require 'abc/adapters/persistence/base'

module Repositories
  class EmailSignup < Abc::Adapters::Persistence::Base
    protected
    def kind
      :email_signup
    end
  end
end
