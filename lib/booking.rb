module HotelBooking
  class Booking
    attr_reader :reference_number, :room, :start_date, :end_date, :price

    def initialize(reference_number:, room:, start_date:, end_date:, price: 200)
      @reference_number = reference_number
      @room = room
      @start_date = start_date.to_s
      @end_date = end_date.to_s
      @price = price
    end

    def overlaps?(start_date, end_date)
      start_date_obj = Date.parse(start_date)
      end_date_obj = Date.parse(end_date)
      booking_start_date = Date.parse(@start_date)
      booking_end_date = Date.parse(@end_date)
      # In between start and end date
      (booking_start_date <= start_date_obj && booking_end_date >= end_date_obj) ||
      # Booking start date overlaps request range
        (booking_start_date >= start_date_obj && booking_start_date <= end_date_obj) ||
        # Booking end date overlaps request range
        (booking_end_date >= start_date_obj && booking_end_date <= end_date_obj)
    end

    def booking_duration
      duration = Date.parse(@end_date) - Date.parse(@start_date)
      duration.to_i
    end

    def booking_cost
      self.booking_duration * price
    end
  end
end
