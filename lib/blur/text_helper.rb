# frozen_string_literal: true

require 'active_support/inflector'

require 'blur/text_helper/version'

module Blur
  module TextHelper
    # Returns the count and word where word is either singular or plural,
    # depending on the count.
    #
    # @example
    #   pluralize(1, 'horse') # => "1 horse"
    #   pluralize(2, 'cat') # => "2 cats"
    def pluralize(count, word)
      "#{count} #{count == 1 ? word.singularize : word.pluralize}"
    end

    # Sanitizes the string by removing carriage returns, newline feeds and
    # redundant spaces.
    #
    # @example
    #   sanitize("the  quick brown  dog") # => "the quick brown dog"
    def sanitize(string)
      string.gsub(/[\s]{2,}/, ' ').gsub(/[\r\n]/, ' ').strip
    end

  end
end
