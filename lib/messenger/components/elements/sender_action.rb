module Messenger
  module Elements
    class SenderAction
      attr_accessor :sender_action

      def initialize(sender_action:)
        @sender_action  = sender_action
      end

      def build
        { 'sender_action' => @sender_action }
      end
    end
  end
end
