require 'rails'

module SimpleCalendar
  class Calendar
    attr_accessor :view_context

    def initialize(view_context, opts={})
      @view_context = view_context
    end

    def render(&block)
      view_context.render partial: "calendar", locals: {}
    end
  end
end