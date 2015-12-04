
Given (/^I am a user$/) do
  @user = FactoryGirl.create :user
end

And (/^I want to print a pdf file$/) do
  @purchase = FactoryGirl.build :purchase
end

And (/^I am signed in$/) do
  visit '/users/sign_in'
  fill_in 'Email', with: @user.email
  fill_in 'Password', with: @user.password
  click_button 'Log in'
end

When (/^I visit the purchase page$/) do
  visit '/purchases'
end

Then (/^I should see a link to add a purchase$/) do
  expect(page).to have_link('New Purchase', href: new_purchase_path)
end

When (/^I click this link$/) do
  find_link('New Purchase', href: new_purchase_path).click
end

Then (/^I should see a form to add a purchase$/) do
  expect(page).to have_selector('form#new_purchase')
end

When (/^I fill the form and submit it$/) do
  fill_in 'File url', with: @purchase.file_url
  fill_in 'Comments', with: @purchase.comments
  click_button 'Create Purchase'
end

Then (/^I should see my new purchase$/) do
    save_and_open_page
    expect(page).to have_content "File url: #{@purchase.file_url}"
    expect(page).to have_content "Comments: #{@purchase.comments}"
end