require "action_controller/caching/actions"

module ActionController
  module Caching  
    extend ActiveSupport::Autoload
    eager_autoload do
      autoload :Actions
    end

    include Actions
  end
end

ActionController::Base.send(:include, ActionController::Caching::Actions)
