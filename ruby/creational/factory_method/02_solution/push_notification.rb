require_relative "notification"

module FactoryMethodPattern
  module Solution
    class PushNotification < Notification
      def send_message(message)
        puts "Sending PUSH notification: #{message}"
      end
    end
  end
end
