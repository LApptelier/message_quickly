module MessageQuickly
  module Messaging
    class ElementShareButton < Button

      attr_accessor :payload

      def initialize(params = {})
        params['type'] ||= 'element_share'
        super(params)
      end

      def to_hash
        { type: type, title: title, payload: payload }
      end

    end
  end
end

# {
#   "type":"element_share",
#   "payload":{
#     "template_type":"generic",
#       "elements":[
#         {
#           "title":"Breaking News: Record Thunderstorms",
#           "subtitle":"The local area is due for record thunderstorms over the weekend.",
#           "image_url":"https://thechangreport.com/img/lightning.png",
#           "buttons":[
#             {
#               "type":"element_share"
#             }
#           ]
#         }
#       ]
#     }
#   }
# }
