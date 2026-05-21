require_relative "notification_factory"
require_relative "push_notification"

module FactoryMethodPattern
  module Solution
    class PushNotificationFactory < NotificationFactory
      def create_notification
        PushNotification.new
      end
    end
  end
end
