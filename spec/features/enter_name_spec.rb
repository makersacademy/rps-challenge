feature 'Setting up game' do
  scenario "When I submit my name the game greets me using it" do
    visit '/'
    fill_in :player_1_name, with: 'James'
    click_button('Submit')
    expect(page).to have_content "James vs"
  end
end
