class Flight < ApplicationRecord
    belongs_to :user
    has_many :passengers
    

    validates :Number, presence: true, length: { in: 3..7 }
    validates :originairport, presence: true, length: { in: 3..20 }

    validates_inclusion_of :passengersnumber, :in => 1..600, message: "Specify number of seats"
    validates_inclusion_of :seatsnumber, :in => 1..600, message: "specify number of passengers"

    

    validates_inclusion_of :price, :in => 1..9999, message: "Price must be between 1 and 9999"

    validate :arrivetime_is_after_departuretime
        validate :seatsnumber_is_greater_orequal_to_passengersnumber
    validate :originairport_is_different_from_destinationairport

    
    private
    def arrivetime_is_after_departuretime
        if departuretime >= arrivaltime
            errors.add(:arrivaltime, "cannot be before the departure time")
        end 
    end 

    def seatsnumber_is_greater_orequal_to_passengersnumber
        if seatsnumber < passengersnumber  
            errors.add(:passengersnumber,"cannot exceed the number of seats")
        end 
    end
    
    def originairport_is_different_from_destinationairport
        if originairport == destinationairport
            errors.add(:originairport, "The two airports must be different")
        end 
    end
    

    
end
