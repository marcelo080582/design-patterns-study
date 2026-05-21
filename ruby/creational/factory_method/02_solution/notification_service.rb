module FactoryMethodPattern
  module Solution
    class NotificationService
      def initialize(factory)
        @factory = factory
      end

      def send(message)
        notification = @factory.create_notification

        notification.send_message(message)
      end
    end
  end
end
