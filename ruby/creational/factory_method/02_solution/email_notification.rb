require_relative "notification"

module FactoryMethodPattern
  module Solution
    class EmailNotification < Notification
      def send_message(message)
        puts "Sending EMAIL notification: #{message}"
      end
    end
  end
end
