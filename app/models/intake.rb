module Intake
    class UserProfile
      include ActiveModel::Model
      attr_accessor :name, :email, :password, :password_confirmation, :phone_number
      validates :name, presence: true
      validates :email, presence: true
      validates :password, presence: true
      validates :password_confirmation, presence: true
      validates :phone_number, presence: true
    end

    class UserAccount
      include ActiveModel::Model
      attr_accessor :state, :years_experience, :lawyer
      #validates :state, presence: true
      #validates :years_experience, presence: true
      #validates :lawyer, value: true
    end
  end