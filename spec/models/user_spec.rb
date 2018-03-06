require 'rails_helper'

RSpec.describe User, type: :model do
  
  before :example do
    @fred = User.create name: 'Fred', email: 'fred@fred.com', password: 'lighthouse', password_confirmation: 'lighthouse'
  end

  describe 'Validations' do
    it 'Creates a new user record with name, email, and MATCHING password should equal true' do
      expect(@fred.valid?).to eq true
    end

    it 'Creates a new user record with name, email, and NON-MATCHING password should equal false' do
      @fred.password_confirmation = 'london drugs'
      expect(@fred.valid?).to eq false
    end

    it 'Returns false if new user contains existing email in database' do
      @allan = User.new name: 'Allan', email: 'fred@fred.com', password: 'lighthouse', password_confirmation:'lighthouse'
      expect(@allan.valid?).to eq false
    end

    it 'Returns false if new user does not contain name' do
      @fred.name = nil
      expect(@fred.valid?).to eq false
    end

    it 'Returns false if the password is less than 6 characters' do
      @fred.password = 'light'
      @fred.password_confirmation = 'light'
      expect(@fred.valid?).to eq false
    end

  end

  describe '.authenticate_with_credentials' do
    it 'Return false if the password does not match the account email through authentication' do
      expect(User.authenticate_with_credentials('fred@fred.com', 'testtest')).to eq nil
    end
    it 'Return true if password matches the account email through authentication' do
      expect(User.authenticate_with_credentials('fred@fred.com', 'lighthouse')).to eq @fred
    end
  end

end
