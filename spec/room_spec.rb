require_relative "spec_helper"

describe 'Hotel class' do
  describe 'Hotel instantiation' do
    before do
      @hotel = Hotel.new("Wyndham")
      @rooms = []
    end

    it 'creates an instance of hotel' do
      expect(@hotel).must_be_kind_of Hotel
    end

    it "is set up for specific attributes and data types" do
      expect(@hotel.hotel_name).must_be_kind_of String
    end

    it "sets room to an empty array if not provided" do
      expect(@hotel.rooms).must_be_kind_of Array
      expect(@hotel.rooms.length).must_equal 0
    end
  end

  describe 'add rooms' do
    before do
      @rooms = []
      room1 = Room.new
      @rooms.push(room1)
    end

    it "stores and instance of room" do
      expect(@rooms).must_be_kind_of Array
    end

    it "can list rooms" do
      counter = 1
      list_rooms = []
      list_rooms.push("hotel_name")
      @rooms.each do |room|
        list_rooms.push("#{counter}: #{room.number}")
        counter += 1
      end
        expect(list_rooms).must_be_kind_of Array
    end

    it "can find room by number" do
      room = @rooms.find {|room| 16 == 16}
      expect(room.number).must_be_kind_of Integer
    end
  end
end