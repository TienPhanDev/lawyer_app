class Request < ApplicationRecord
    belongs_to :client, class_name: "User"
    belongs_to :lawyer, class_name: "User"
    has_one :consult
end
