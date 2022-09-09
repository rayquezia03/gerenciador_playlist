class Api::V1::TracksController < ApplicationController
    def index
        @tracks = Track.all
        render json: @tracks
    end

    def top_100
        @tracks = Track.all
        render json: @tracks
    end   
end
