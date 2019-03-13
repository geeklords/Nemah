class ReservationsController < ApplicationController
    def index
        @reserve = Reservation.all
        @post_title = Post.all 
        end
end
