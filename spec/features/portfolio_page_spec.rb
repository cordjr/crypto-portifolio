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
  scenario "should have a success message when fill new Portfolio with valid inputs" do
    visit("/portfolio")
    click_on("New Portfolio")
    fill_in "portfolio_name",	with: "Portfolio"
    click_on("Save Portfolio")
    expect(page).to have_content("Portfolio created!")
  end




end
