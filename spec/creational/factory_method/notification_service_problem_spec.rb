require "spec_helper"

require_relative "../../../ruby/creational/factory_method/01_problem/notification_service"

RSpec.describe FactoryMethodPattern::Problem::NotificationService do
  describe "#send" do
    it "sends email notifications" do
      service = described_class.new

      expect do
        service.send(:email, "Hello by email")
      end.to output(
        "Sending EMAIL notification: Hello by email\n"
      ).to_stdout
    end

    it "sends sms notifications" do
      service = described_class.new

      expect do
        service.send(:sms, "Hello by sms")
      end.to output(
        "Sending SMS notification: Hello by sms\n"
      ).to_stdout
    end

    it "sends push notifications" do
      service = described_class.new

      expect do
        service.send(:push, "Hello by push")
      end.to output(
        "Sending PUSH notification: Hello by push\n"
      ).to_stdout
    end

    it "raises an error for unsupported notification types" do
      service = described_class.new

      expect do
        service.send(:fax, "Hello")
      end.to raise_error("Unsupported notification type")
    end
  end
end
