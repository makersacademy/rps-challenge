require_relative '../../app.rb'

feature 'homepage ' do
  scenario " Register and see my name" do
    visit("/")
    fill_in('player_one', with: 'jake')
    
    click_button('Submit')
    expect(page).to have_content("jake")
  end
end