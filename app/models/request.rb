class Request < ApplicationRecord
    belongs_to :client, class_name: "User", optional: true
    belongs_to :lawyer, class_name: "User", optional: true
    has_one :consult

    validates :title, presence: :true
    validates :date, presence: :true
    validates :injury, presence: :true

end
