require 'afterburner'
require 'afterburner/adapters/persistence/hyperion'

class EmailSignupRepository
  extend ::Afterburner::Adapters::Persistence::Hyperion

  def self.entity_kind
    :email_signup
  end
end
