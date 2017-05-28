require_relative '../../app'

feature "Player can submit their name", :type => :feature do
  scenario "The player can submit their name" do
    visit '/'
    fill_in('player_name', with: "Digby")
    click_button 'Submit'
    expect(page).to have_content 'Player: Digby!'
  end
end
