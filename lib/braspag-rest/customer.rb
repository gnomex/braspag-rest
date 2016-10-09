module BraspagRest
  class Customer < Hashie::IUTrash
    property :name, from: 'Name'
    property :identity, from: 'Identity'
    property :address, from: 'Address', with: ->(values) { BraspagRest::Address.new(values) }
  end
end
