class Consult < ApplicationRecord

    include ActiveModel::AttributeAssignment
    include ActiveModel::Model

    belongs_to :request
    has_one :lawyer, through: :request
    has_one :client, through: :request
    accepts_nested_attributes_for :request
    
    validates :request_id, presence: true

    # def time=(arr)
    #     Time.new(arr[0], arr[1], arr[2], arr[3], arr[4])  
    # end
end

#Time.new(params["consult"]["time(1i)"], params["consult"]["time(2i)"], params["consult"]["time(3i)"], params["consult"]["time(4i)"], params["consult"]["time(5i)"])