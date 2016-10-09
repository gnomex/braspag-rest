module BraspagRest
  class Address < Hashie::IUTrash
    property :street, from: 'Street'
    property :number, from: 'Number'
    property :complement, from: 'Complement'
    property :zipcode, from: 'Zipcode'
    property :city, from: 'City'
    property :state, from: 'State'
  end
end
