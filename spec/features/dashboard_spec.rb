require 'rails_helper'

RSpec.feature 'when you visit dashboard', type: :feature do
  scenario 'you login' do

    visit root_path
    expect(page).to have_content("Same as Github")

    click_on "Login with Github"
    expect(current_path).to eq(dashboard_path)
    save_and_open_page
  end
end
