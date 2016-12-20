module Messenger
  module Components
    module Element
      def build
        instance_values.delete_if { |_attribute, value| value.nil? }
      end

      def build_elements(elements)
        elements.map { |element| element.build } if elements.present?
      end
    end
  end
end
