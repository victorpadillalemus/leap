class BookingMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.booking_mailer.confirmation.subject
  #
  def create_confirmation
    @booking = params[:booking]
    mail(
      to: @booking.user.email,
      subject: "Booking #{@booking.id} created!"
    )
  end
end
