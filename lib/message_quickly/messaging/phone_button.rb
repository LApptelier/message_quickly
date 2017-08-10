module MessageQuickly
  module Messaging
    class PhoneButton < Button

      attr_accessor :payload

      def initialize(params = {})
        params['type'] ||= 'phone_number'
        super(params)
      end

      def to_hash
        { type: type, title: title, payload: payload }
      end

    end
  end
end

# {
#   "type":"phone_number",
#   "title":"Start Chatting",
#   "payload":"USER_DEFINED_PAYLOAD"
# }
