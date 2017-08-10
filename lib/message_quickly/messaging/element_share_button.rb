module MessageQuickly
  module Messaging
    class ElementShareButton < Button

      def initialize(params = {})
        params['type'] ||= 'element_share'
        super(params)
      end

      def to_hash
        { type: type }
      end

    end
  end
end

# {
#   "type":"element_share",
# }
