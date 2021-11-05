class UserAssetsController < ApplicationController
  before_action :current_user_asset, only: [:show, :edit, :update, :destroy]

      def index
        @user_assets = UserAsset.all
      end

      def show

      end

      def new
        @user_asset = UserAsset.new
      end

      def create
        @user_asset = UserAsset.create(user_asset_params)

        redirect_to user_asset_path(@user_asset)
      end

      def edit

      end

      def update
        @user_asset.update(user_asset_params)

        redirect_to user_asset_path(@user_asset)
      end

      def destroy
        @user_asset.destroy

        redirect_to user_assets_path
      end

      private

      def user_asset_params
        params.require(:user_asset).permit(:name, :description, :storage, :user_id)
      end

      def current_user_asset
        @user_asset = UserAsset.find(params[:id])
      end
end
