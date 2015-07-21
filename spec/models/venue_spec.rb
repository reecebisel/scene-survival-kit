require 'rails_helper'

RSpec.describe Venue, type: :model do

  context "class methods" do

    describe "relationships" do
      it "belongs to" do
        should belong_to(:event)
        should belong_to(:venue_rep)
      end

      it "has one" do
        should have_one(:address)
      end
    end
  end

end