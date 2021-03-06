module VagrantPlugins
  module OpenStack
    module Action
      class IsCreated
        def initialize(app, env)
          @app = app
        end

        def call(env)
          env[:result] = env[:machine].state.id == :active
          @app.call(env)
        end
      end
    end
  end
end
