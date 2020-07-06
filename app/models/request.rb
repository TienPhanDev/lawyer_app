class Request < ApplicationRecord
    belongs_to :client, class_name: "User"
    belongs_to :attorney, class_name: "User"
    has_one :consult
end
