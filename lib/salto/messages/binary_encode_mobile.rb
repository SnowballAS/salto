module Salto
  module Messages
    class BinaryEncodeMobile < Salto::Messages::EncodeCard
      def self.command_name
        'CNMB'
      end

      def initialize(phone_number:, **args)
        super(encoder: phone_number, **args)
        fields.delete_at(2) # Delete eject strategy
        fields[14] = 1 # Returns installation ID (= '1') or not (= '0').
      end
    end
  end
end
