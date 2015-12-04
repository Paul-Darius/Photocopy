
Given (/^I am signed in as an admin$/) do
  @adminuser = FactoryGirl.create :adminuser
  visit '/users/sign_in'
  fill_in 'Email', with: @adminuser.email
  fill_in 'Password', with: @adminuser.password
  click_button 'Log in'
end
When (/^I visit the user's list page$/) do
  visit '/listofusers'
end
And (/^There is a registered user$/) do
  expect(page).to have_selector('td')
end
Then (/^I should see a link to ban a user$/) do
  expect(page).to have_link('Ban user', href: '/listofusers/banuser/?id=3')
end

And (/^I should see a link to see user's statistics$/) do
  expect(page).to have_link('User Statistics', href: statisticsuser_listofusers_path)
end