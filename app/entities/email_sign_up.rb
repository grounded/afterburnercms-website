class NoNameProvided < StandardError; end
class NoEmailProvided < StandardError; end

module Entities
  class EmailSignUp
    attr_reader :email, :name

    def initialize(data, options = {})
      # these two lines should be handled differently
      raise NoEmailProvided if data[:email].empty?
      raise NoNameProvided if data[:email].empty?
      @email = data[:email]
      @name = data[:name]
    end

    def to_hash
      {:email => email, :name => name}
    end
  end
end
