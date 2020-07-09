module Intake
    class UserProfilesController < ApplicationController
      def new
        # An instance of UserProfile is created just the
        # same as you would for any Active Record object.
        @user_profile = UserProfile.new
      end
  
      def create
        # Again, an instance of UserProfile is created
        # just the same as you would for any Active
        # Record object.
        @user_profile = UserProfile.new(user_profile_params)
  
        # The valid? method is also called just the same
        # as for any Active Record object.
        if @user_profile.valid?
  
          # Instead of persisting the values to the
          # database, we're temporarily storing the
          # values in the session.
          session[:user_profile] = {
            'name' => @user_profile.name,
            'email' => @user_profile.email,
            'password' => @user_profile.password,
            'password_confirmation' => @user_profile.password_confirmation,
            'phone_number' => @user_profile.phone_number
          }
  
          redirect_to new_intake_user_account_path
        else
          render :new
        end
      end
  
      private
  
      # The strong params work exactly as they would
      # for an Active Record object.
      def user_profile_params
        params.require(:intake_user_profile).permit(
          :name,
          :email,
          :password,
          :password_confirmation,
          :phone_number
        )
      end
      
    end
  end