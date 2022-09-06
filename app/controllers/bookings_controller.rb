class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def business_days
    @business_days = []
    Date::DAYNAMES.reject { |d| d.include?('Saturday') || d.include?('Sunday') }.each do |days|
      @business_days << days
    end
    @business_days
  end

  helper_method :business_days
end
