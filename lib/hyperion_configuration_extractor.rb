class HyperionConfigurationExtractor
  class DatabaseNotSpecifiedError < StandardError; end

  def initialize(base)
    @base = base
  end

  def connection_string
    "postgres://#{username}:#{password}@#{host}/#{database}"
  end

  def host
    config[:host] || 'localhost'
  end

  def database
    config[:database] || raise(DatabaseNotSpecifiedError)
  end

  def username
    config[:username]
  end

  def password
    config[:password]
  end

  private
  attr_reader :base

  def config
    base.connection_config
  end
end

