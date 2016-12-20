require 'messenger/components/attachment'

module Messenger
  module Templates
    class QuickReplies
      include Components::Attachment

      attr_accessor :text, :quick_replies

      ATTRIBUTES = %w(text quick_replies).freeze

      def initialize(text:, quick_replies:)
        @type          = 'quick_replies'
        @text          = text
        @quick_replies       = build_elements(quick_replies)
      end
    end
  end
end