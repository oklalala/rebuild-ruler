require "rulers/version"
require "rulers/routing"

module Rulers
  class Application
     def call(env)
        puts "#{env} env"
       klass, act = get_controller_and_action(env)
       controller = klass.new(env)
       text = controller.send(act)
       [200, {'Content-Type' => 'text/html'},[text]]
     end
  end
  class Controller
     def initialize(env)
       @env = env
       puts env
     end
     def env
       @env
     end
  end
end