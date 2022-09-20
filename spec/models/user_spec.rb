require 'rails_helper'

RSpec.describe User, type: :model do
  subject do
    User.create!(name: 'emmanuel', email: 'epaltechs@gmail.com', password: 'password')
  end

  before { subject.save }

  it 'should have name epaltechs' do
    expect(subject.name).to eql('emmanuel')
  end

  it 'should have name present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'should have email epaltechs@gmail.com' do
    expect(subject.email).to eql('epal4ever@hotmail.com')
  end

  it 'email should be present' do
    subject.email = nil
    expect(subject).to_not be_valid
  end
end
