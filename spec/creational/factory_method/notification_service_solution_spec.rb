require "spec_helper"

require_relative "../../../ruby/creational/factory_method/02_solution/notification_service"

require_relative "../../../ruby/creational/factory_method/02_solution/email_notification_factory"
require_relative "../../../ruby/creational/factory_method/02_solution/sms_notification_factory"
require_relative "../../../ruby/creational/factory_method/02_solution/push_notification_factory"

RSpec.describe FactoryMethodPattern::Solution::NotificationService do
  describe "#send" do
    it "sends email notifications" do
      factory = FactoryMethodPattern::Solution::EmailNotificationFactory.new

      service = described_class.new(factory)

      expect do
        service.send("Hello by email")
      end.to output(
        "Sending EMAIL notification: Hello by email\n"
      ).to_stdout
    end

    it "sends sms notifications" do
      factory = FactoryMethodPattern::Solution::SmsNotificationFactory.new

      service = described_class.new(factory)

      expect do
        service.send("Hello by sms")
      end.to output(
        "Sending SMS notification: Hello by sms\n"
      ).to_stdout
    end

    it "sends push notifications" do
      factory = FactoryMethodPattern::Solution::PushNotificationFactory.new

      service = described_class.new(factory)

      expect do
        service.send("Hello by push")
      end.to output(
        "Sending PUSH notification: Hello by push\n"
      ).to_stdout
    end
  end
end
