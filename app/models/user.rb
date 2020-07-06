class User < ApplicationRecord
    has_many :requests
    
    has_many :lawyers, foreign_key: :lawyer_id, class_name: "Request"
    has_many :clients, through: :lawyers

    has_many :clients, foreign_key: :client_id, class_name: "Request"
    has_many :attorneys, through: :clients

    has_secure_password
end
