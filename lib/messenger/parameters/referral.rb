module Messenger
  module Parameters
    class Referral
      include Callback

      attr_accessor :ref, :source, :type

      def initialize(ref:, source:, type:)
        @ref = ref
        @source = source
        @type = type
      end
    end
  end
end
