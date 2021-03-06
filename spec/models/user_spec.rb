require "rails_helper"

RSpec.describe User, type: :model do
  subject(:user) { described_class.new }

  describe "validations" do
    it { is_expected.to validate_presence_of(:first_name) }
    it { is_expected.to validate_presence_of(:last_name) }
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_presence_of(:organization_id) }
  end

  describe "associations" do
    it { is_expected.to belong_to(:organization) }
  end
end
