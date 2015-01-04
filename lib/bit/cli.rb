require 'bit'
require 'thor'

module Bit
  class CLI < Thor
    include Thor::Actions

    def self.start(*)
      super
    rescue Exception => e
      raise e
    end
  end
end
