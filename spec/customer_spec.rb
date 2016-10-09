require 'spec_helper'

describe BraspagRest::Customer do
  let(:braspag_response) {
    {
      'Name' => 'Comprador Teste',
      'Identity' => '790.010.515-88',
      'Address' => {
        'Street' => 'Rua dos testes',
        'Number' => '123',
        'Complement' => '',
        'Zipcode' => '22010-000',
        'City' => 'São Paulo',
        'State' => 'SP'
      }
    }
  }

  describe '.new' do
    subject(:customer) { BraspagRest::Customer.new(braspag_response) }

    it 'initializes a customer using braspag response format' do
      expect(customer.name).to eq('Comprador Teste')
      expect(customer.identity).to eq('790.010.515-88')
      expect(customer.address).to_not be_empty
      expect(customer.address.street).to eq('Rua dos testes')
      expect(customer.address.number).to eq('123')
      expect(customer.address.complement).to eq('')
      expect(customer.address.zipcode).to eq('22010-000')
      expect(customer.address.city).to eq('São Paulo')
      expect(customer.address.state).to eq('SP')
    end
  end
end
