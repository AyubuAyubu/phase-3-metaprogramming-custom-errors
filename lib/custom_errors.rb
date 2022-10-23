class Person
  attr_accessor :partner, :name

  def initialize(name)
    @name = name
  end

  def get_married(person)
    #step 2
    if person.is_a?(Person)
      self.partner = person
      person.partner = self
    else
      #step 3
      #raise PartnerError

      #step 5
      begin
        raise PartnerError
        rescue PartnerError => error
           puts error.message
      end
    end
  end
  #step 1
 class PartnerError < StandardError
  #step 4
    def message
      "you must give the get_married method an argument of an instance of the person class!"
    end
  end
end



beyonce = Person.new("Beyonce")
beyonce.get_married("Jay-Z")
puts beyonce.name




