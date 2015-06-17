require 'spec_helper'

describe 'Signing in' do
	it 'prompts for email and password' do
		visit root_url

		click_link 'Sign In'

		expect(current_path).to eq(signin_path)

		expect(page).to have_field(:email)
		expect(page).to have_field(:password)
	end

	it 'signs in user with a valid email/password combination' do
	  user = User.create(user_attributes)

	  visit root_url

	  click_link 'Sign In'

	  fill_in 'Email', with: user.email
	  fill_in 'Password', with: user.password
	  
	  click_button 'Sign In'
	  expect(current_path).to eq(user_path(user))
	  expect(page).to have_text("Welcome back, #{user.name}!")
	end

	it 'does not sign in an invalid user email/password combination' do
	  user = User.create(user_attributes)
	  visit root_url

	  click_link 'Sign In'

	  fill_in 'Email', with: user.email
	  fill_in 'Password', with: "noentry"

	  click_button 'Sign In'

	  expect(page).to have_text("Invalid email or password.")
	end
end