module Entities
  class EmailSignup
    attr_reader :email, :name

    def initialize(data, options = {})
      @email = data[:email]
      @name = data[:name]
    end

    def to_hash
      {:email => email, :name => name}
    end
  end
end
