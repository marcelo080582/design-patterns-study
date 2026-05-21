module FactoryMethodPattern
  module Solution
    class NotificationFactory
      def create_notification
        raise NotImplementedError, "Subclasses must implement create_notification"
      end
    end
  end
end
