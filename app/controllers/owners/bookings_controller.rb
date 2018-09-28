class Owners::BookingsController < ApplicationController
  layout 'style_guide'

  expose :bookings, ->{Booking.all.order(status: :asc, date: :desc)}
  expose :booking

  def index
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
    if params[:status].present?
      update_booking
    else
      redirect_to owners_bookings_path, alert: "La réservation n'a pas pu être modifiée"
    end
  end

  private

  def update_booking
    if booking.update(status: params[:status])
      check_redirection
    end
  end

  def check_redirection
    if params[:status] == "validated"
      redirect_to owners_bookings_path, notice: "La réservation à bien été #{params[:status]}"
    elsif params[:status] == "cancelled"
      redirect_to owners_bookings_path, notice: "La réservation à bien été #{params[:status]}"
    end
  end


end
