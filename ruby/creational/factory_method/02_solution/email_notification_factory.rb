require_relative "notification_factory"
require_relative "email_notification"

module FactoryMethodPattern
  module Solution
    class EmailNotificationFactory < NotificationFactory
      def create_notification
        EmailNotification.new
      end
    end
  end
end
