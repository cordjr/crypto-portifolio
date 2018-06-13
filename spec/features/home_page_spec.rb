require 'rails_helper'

feature 'home_page' do
    scenario 'should show all crypto coins cards' do

        visit('/')
        expect(page).to have_content('Bitcoin')
        expect(page).to have_content('Ethereum')
        expect(page).to have_content('Litecoin')
        expect(page).to have_content('Ripple')
        expect(page).to have_content('BCC')
        # expect(page).to have_css('table', :count=2)
        # expect(page).to have_css('tr', :minimun=>1)




    end

end
