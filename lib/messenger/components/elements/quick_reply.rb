require 'messenger/components/element'

module Messenger
  module Elements
    class QuickReply
      include Components::Element

      attr_accessor :content_type, :title, :payload, :image_url

      def initialize(content_type:, title: nil, payload: nil, image_url: nil)
        @content_type    = content_type
        @title    = title if text?(content_type)
        @payload = payload if text?(content_type)
        @image_url = image_url
      end

      private

      def text?(value)
        value == 'text'
      end
    end
  end
end
