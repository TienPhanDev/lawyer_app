class User < ApplicationRecord
    has_many :requests
    has_many :law_users, foreign_key: :lawyer_id, class_name: 'Request'
    has_many :clients, through: :law_users
    
    has_many :requesters, foreign_key: :client_id, class_name: 'Request'
    has_many :lawyers, through: :requesters 

    #has_secure_password

    def self.lawyers
        User.all.where(lawyer: true)
    end

    def self.clients
        User.all.where(lawyer: false)
    end
end
