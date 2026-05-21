module FactoryMethodPattern
  module Problem
    class EmailNotification
      def send_message(message)
        puts "Sending EMAIL notification: #{message}"
      end
    end

    class SmsNotification
      def send_message(message)
        puts "Sending SMS notification: #{message}"
      end
    end

    class PushNotification
      def send_message(message)
        puts "Sending PUSH notification: #{message}"
      end
    end

    class NotificationService
      def send(type, message)
        notification =
          if type == :email
            EmailNotification.new
          elsif type == :sms
            SmsNotification.new
          elsif type == :push
            PushNotification.new
          else
            raise "Unsupported notification type"
          end

        notification.send_message(message)
      end
    end
  end
end
