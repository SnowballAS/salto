module Salto
  module Support
    class BinaryMobileKey

      attr_accessor :message

      def initialize(message)
        self.message = message
      end

      def key
        message.fields[2]
      end
    end
  end
end
