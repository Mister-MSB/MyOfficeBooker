class Bookers::BookingsController < ApplicationController
  layout 'style_guide'

  before_action :visitor_redirection
  prepend_before_action :check_if_date_already_booked, only: :create

  expose :booking, scope: ->{current_booker.bookings}
  expose :bookings, ->{current_booker.bookings}
  expose :place, ->{Place.find_by(id: params[:place_id])}

  def index
  end

  def show
  end

  def new
  end

  def create
    if booking.save(booking_params)
      redirect_to bookers_booking_path(id: booking.id), notice: "Votre reservation à bien été créer"
    else
      redirect_to :back, alert: "Merci de bien vouloir remplir le formulaire"
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def visitor_redirection
    if current_booker.blank?
      redirect_to new_booker_registration_path, alert: "Merci de créer votre compte utilisateur pour continuer"
    end
  end

  def booking_params
    params.require(:booking).permit(%i[capacity date booking_type place_id])
  end

  def check_if_date_already_booked
    date = date_parser
    if Booking.where(place_id: booking.place_id, date: date).present?
      redirect_to new_bookers_booking_path(place_id: booking.place_id), alert: "Malheureusement une réservation sur cette journée est déjà présente"
    end
  end

  def date_parser
    Date.parse( {"(1i)"=> params[:booking]["date(1i)"], "(2i)"=>params[:booking]["date(2i)"], "(3i)"=>params[:booking]["date(3i)"]}.to_a.sort.collect{|c| c[1]}.join("-") )
  end

end
