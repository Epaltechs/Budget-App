require 'rails_helper'

RSpec.describe Expense, type: :model do
  before(:each) do
    @user = User.create(name: 'emmanuel', email: 'epaltechs@gmail.com', password: '543210')
    expect(@user).to be_valid
    @category = Category.create(name: 'yhello', icon: 'icon',
                                user_id: @user.id)
    @expense = Expense.create(name: 'expense', amount: 4,
                              user_id: @user.id, category_id: @category.id)
  end

  it 'spec for create a expense' do
    expect(@expense).to be_valid
    expect(@expense.name).to eq 'expense'
    expect(@expense.amount).to eq 4
  end
end
