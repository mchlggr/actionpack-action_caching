require "action_controller/caching/actions"

module ActionController
  extend ActiveSupport::Autoload

  module Caching
    eager_autoload do
      autoload :Actions
    end

    include Actions
  end
end

ActionController::Base.send(:include, ActionController::Caching::Actions)
