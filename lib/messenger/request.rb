module Messenger
  class Request
    def initialize(component, recipient_id)
      @recipient_id = recipient_id
      @body = body
      create_request(component)
    end

    def build
      return @body
    end

    def add_element(element)
      @body.merge!({ message: element.build })
    end

    def add_sender_action(action)
      @body.merge!(action.build)
    end

    def body
      {
        recipient: { id: @recipient_id }
      }
    end

    def create_request(component)
      if component.is_a? Elements::SenderAction
        add_sender_action(component)
      else
        add_element(component)
      end
    end
  end
end
