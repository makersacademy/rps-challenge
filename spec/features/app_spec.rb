require 'spec_helper'

feature 'User' do

    subject(:game) { Computer.new }

    scenario 'takes a choice' do
        visit('/')
        fill_in "player1", with: "Toby"
        fill_in :choice, with: "Rock"
        click_button "3...2....1....SHOW!"
        expect(page).to have_content("you used Rock")
    end

    scenario 'takes a name' do
        visit('/')
        fill_in :player1, with: "Toby"
        fill_in :choice, with: "Rock"
        click_button "3...2....1....SHOW!"
        expect(page).to have_content("Toby")
    end

end
