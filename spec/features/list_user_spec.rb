require 'spec_helper'

describe 'Viewing the list of users' do
  it 'shows the users' do
  	user1 = User.create!(user_attributes(name: "mike", email: "mike@xmpl.com"))
  	user2 = User.create!(user_attributes(name: "larry", email: "larry@xmpl.com"))
  	user3 = User.create!(user_attributes(name: "curly", email: "curly@xmpl.com"))
    
    visit users_url

    expect(page).to have_link(user1.name)
    expect(page).to have_link(user2.name)
    expect(page).to have_link(user3.name)
  end
end
