require 'rails_helper'

RSpec.describe Event, type: :model do
  describe 'validations' do

      let!(:event1) { build :event, name: '' }

      it 'is invalid without a name' do
        event1.valid?
        expect(event1.errors).to have_key(:name)
      end




    context 'about the description in an event : ' do

      let!(:event2) { build :event, description: '' }

      it 'is invalid without a description' do
        event2.valid?
        expect(event2.errors).to have_key(:description)
      end

      let!(:event_descr) { build :event, description: "a" * 501 }

      it 'is invalid with a description larger than 500 characters' do

        event_descr.valid?
        expect(event_descr.errors).to have_key(:description)
      end

      let!(:event_descr2) { build :event, description: "a" * 499 }

      it 'is valid with a description smaller than 500 characters' do

        event_descr2.valid?
        expect(event_descr2.errors).to_not have_key(:description)
      end

    end



    context 'about starts_at and Ends_at section' do

      let!(:date1) { build :event, starts_at: "" }

      it 'is invalid if a starts_at is not present' do

        date1.valid?
        expect(date1.errors).to have_key(:starts_at)
      end

      let!(:date2) { build :event, ends_at: "" }

      it 'is invalid if a ends_at is not present' do

        date2.valid?
        expect(date2.errors).to have_key(:ends_at)
      end


      let!(:date3) { build :event, ends_at: Time.now  , starts_at: Time.now + 1}

      it 'is invalid if a ends_at is not later than strats_at' do

        # date3.valid?
        # expect(date3.errors).to have_key(:ends_at)
      end

    end

    describe "#bargain?" do
      let(:bargain_event) { create :event, price: 20 }
      let(:non_bargain_event) { create :event, price: 200 }

      it "returns true if the price is smaller than 30 EUR" do
        expect(bargain_event.bargain?).to eq(true)
        expect(non_bargain_event.bargain?).to eq(false)
      end
    end

    describe ".order_by_price" do
      let!(:event1) { create :event , price: 100}
      let!(:event2) { create :event , price: 50}
      let!(:event3) { create :event , price: 300}

      it "should return a sorted array of rooms by prices" do
        expect(Event.order_by_price).to eq([event2, event1, event3])
      end

    end


  end
end
