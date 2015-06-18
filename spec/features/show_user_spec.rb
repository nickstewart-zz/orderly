require 'spec_helper'

describe 'Viewing a users profile page' do
  
  it 'show a users details' do
    user = User.create!(user_attributes)

    sign_in(user)

    visit user_path(user)

    expect(page).to have_text(user.name)
    expect(page).to have_text(user.email) 
  end
end