# frozen_string_literal: true

module Scoruby
  module Predicates
    # Returns true for any input
    class TruePredicate
      def field
        nil
      end

      def true?(_)
        true
      end

      def missing?(_)
        false
      end
    end
  end
end
