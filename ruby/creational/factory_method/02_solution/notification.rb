module FactoryMethodPattern
  module Solution
    class Notification
      def send_message(_message)
        raise NotImplementedError, "Subclasses must implement send_message"
      end
    end
  end
end
