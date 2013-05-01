require 'abc-adapters'
require 'adapters/persistence/repositories/base'
require 'entities/email_signup'

module Repositories
  class EmailSignup < Abc::Adapters::Persistence::Repositories::Base
    protected
    def kind
      :email_signup
    end

    def entity_class
      Entities::EmailSignup
    end
  end
end
