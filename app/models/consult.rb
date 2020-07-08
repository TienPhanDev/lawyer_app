class Consult < ApplicationRecord
    belongs_to :request
    has_one :lawyer, through: :requests
    has_one :client, through: :requests
    accepts_nested_attributes_for :requests
    
end
