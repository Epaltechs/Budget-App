require 'rails_helper'

RSpec.describe Category, type: :model do
  before(:each) do
    @user = User.create(name: 'Emmanuel', email: 'epaltechs@gmail.com', password: '543210')
    expect(@user).to be_valid
    @category = Category.create(name: 'yhello', icon: 'icon',
                                user_id: @user.id)
  end

  it 'spec for create a category' do
    expect(@category).to be_valid
    expect(@category.name).to eq 'yhello'
    expect(@category.icon).to eq 'icon'
  end
end
