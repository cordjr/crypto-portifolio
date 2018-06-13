require 'rails_helper'

feature 'portfolio page' do
  scenario "should show portfolio title"  do
    visit("/portfolio")
    expect(page).to have_content("Portfolios")
  end

  scenario "should have a button called new portfolio" do
    visit("/portfolio")
    expect(page).to have_content("New Portfolio")

  end


end
