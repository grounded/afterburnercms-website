module Hyperion
  module Sql
    class QueryBuilder
      def  format_table(table)
        Util.snake_case(quote(table.pluralize))
      end
    end
  end

  class Format
    class << self
      def format_kind(kind)
        Util.snake_case(kind.to_s.pluralize)
      end
    end
  end
end
