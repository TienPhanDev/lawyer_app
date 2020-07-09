class Consult < ApplicationRecord

    include ActiveModel::AttributeAssignment
    include ActiveModel::Model

    belongs_to :request
    has_one :lawyer, through: :request
    has_one :client, through: :request
    accepts_nested_attributes_for :request
    
    validates :request_id, presence: true

end