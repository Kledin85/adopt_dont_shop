require 'rails_helper'

RSpec.describe ApplicationPet, type: :model do
  describe 'relationships' do
    it { should belong_to :application }
    it { should belong_to :pet }
  end

  describe 'instance variables' do
    it 'approval_status' do
      ap_1 = ApplicationPet.create(application_id: 1, pet_id: 1, status: true)
      ap_2 = ApplicationPet.create(application_id: 1, pet_id: 2, status: false)
      ap_3 = ApplicationPet.create(application_id: 1, pet_id: 3, status: nil)
      
      expect(ap_1.approval_status).to eq("Pet Approved")
      expect(ap_2.approval_status).to eq("Pet Rejected")
      expect(ap_3.approval_status).to eq(nil)
    end 
  end

  # describe "status" do
  #   it 'shows the status of the application' do
  #     ap_1 = ApplicationPet.create(application_id: 1, pet_id: 1, status: true)
  #     ap_2 = ApplicationPet.create(application_id: 1, pet_id: 2, status: false)
  #     ap_3 = ApplicationPet.create(application_id: 1, pet_id: 3, status: nil)
      
  #   end
  # end
end