require_relative "notification_factory"
require_relative "sms_notification"

module FactoryMethodPattern
  module Solution
    class SmsNotificationFactory < NotificationFactory
      def create_notification
        SmsNotification.new
      end
    end
  end
end
