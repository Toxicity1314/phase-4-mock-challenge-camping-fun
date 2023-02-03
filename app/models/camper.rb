class Camper < ApplicationRecord
    has_many :signups
    has_many :activities, through: :signups
    
    validates :name, presence: true
    validates :age, numericality: { less_than:19, greater_than:7 }

end
