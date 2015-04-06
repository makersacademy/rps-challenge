# rubocop:disable all

module Capybara
  module Driver
    module Sessions
      def set_session(id)
        Capybara.instance_variable_set("@session_pool", {
          "#{Capybara.current_driver}#{Capybara.app.object_id}" => $sessions[id]
        })
      end

      def in_session(id, &block)
        $sessions ||= {}
        $sessions[:default] ||= Capybara.current_session
        $sessions[id]       ||= Capybara::Session.new(Capybara.current_driver, Capybara.app)

        set_session(id)

        yield

        set_session(:default)
      end
    end
  end
end

World(Capybara::Driver::Sessions)