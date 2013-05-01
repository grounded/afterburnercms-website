module Entities
  class EmailSignup
    attr_reader :name, :email

    def initialize(attributes)
      @name = attributes[:name]
      @email = attributes[:email]
    end

    def to_hash
      {:name => name, :email => email}
    end
  end
end
