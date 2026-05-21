require_relative "notification"

module FactoryMethodPattern
  module Solution
    class SmsNotification < Notification
      def send_message(message)
        puts "Sending SMS notification: #{message}"
      end
    end
  end
end
