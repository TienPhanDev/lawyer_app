module Intake
    class UserAccountsController < ApplicationController
      def new
        #byebug
        @user_account = UserAccount.new
      end
  
      def create
        @user_account = UserAccount.new(user_account_params)
  
        if @user_account.valid?
  
          # The values from the previous form step need to be
          # retrieved from the session store.
          full_params = user_account_params.merge(
            state: session['user_profile']['state'],
            years_experience: session['user_profile']['years_experience'],
            lawyer: session['user_profile']['lawyer']
          )
          # byebug
          # Here we finally carry out the ultimate objective:
          # creating a User record in the database.
          User.create!(full_params)
  
          # Upon successful completion of the form we need to
          # clean up the session.
          session.delete('user_profile')
  
          redirect_to users_path
        else
          render :new
        end
      end
  
      private
  
      def user_account_params
        params.require(:intake_user_account).permit(
          :state,
          :years_experience,
          :lawyer
        )
      end
      
    end
  end