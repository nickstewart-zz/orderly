require 'spec_helper'

describe 'user sign in' do
	it 'prompts for email and password' do
		visit root_url

		click_link 'Sign In'

		expect(current_path).to eq(signin_path)

		expect(page).to have_field(:email)
		expect(page).to have_field(:password)
    end
end
