require 'spec_helper'

describe 'creating a new user' do
  it 'saves a user and shows the users details' do
    visit users_url

    click_link 'Sign Up'

    expect(current_path).to eq(signup_path)

    fill_in 'Name', with: 'Joe'
    fill_in 'Email', with: 'joe@xmpl.com'
    fill_in 'Password', with: 'secret'
    fill_in 'Confirm Password', with: 'secret'

    click_button 'Create Account'

    expect(current_path).to eq(user_path(User.last))

    expect(page).to have_text("Joe")
    expect(page).to have_text("joe@xmpl.com")
    expect(page).to have_text("Account successfully created!")

    expect(page).not_to have_link('Sign Up')
    expect(page).not_to have_link('Sign In')
  end

  it 'does not save an invalid user' do
    visit signup_url

    expect {
        click_button 'Create Account' 
    }.not_to change(User, :count)

    expect(page).to have_text('error')
  end
end