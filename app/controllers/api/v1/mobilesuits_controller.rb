module Api
  module V1
    class MobilesuitsController < ApplicationController

      def index
        @mobilesuits = Mobilesuit.all
        render json: @mobilesuits
      end

      def show
        @mobilesuit = Mobilesuit.find(params[:id])
        render json: @mobilesuit
      end

      def create
        @mobilesuit = Mobilesuit.new(mobilesuit_params)
        @mobilesuit.save
        render json: {_id: @mobilesuit.id.to_s}
      end

      def update
        @mobilesuit = Mobilesuit.find(params[:id])
        @mobilesuit.update(mobilesuit_params)
        render json: {_id: @mobilesuit.id.to_s}
      end

      def destroy
        @mobilesuit = Mobilesuit.find(params[:id])
        @mobilesuit.destroy
        render json: {_id: @mobilesuit.id.to_s}
      end

      private

        def mobilesuit_params
          params.require(:mobilesuit).permit(:model, :name, :height, :weight)
        end

    end
  end
end

module BSON
  class ObjectId
    alias :to_json :to_s
    alias :as_json :to_s
  end
end
