require "rulers/array"
require "rulers/version"

module Rulers
  class Application
    def call(env)
      `echo debug > debug.txt`;
      [200,{'Content-Type' => 'text/html'},
        ["Hello from Ruby on Rulers! sum=#{[1,2,3,4].sum}, multi=#{[1,2,3,4].multi}"]]
    end
  end
end