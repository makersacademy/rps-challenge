feature 'enter names' do
  scenario "the user can submit their name" do
    visit('/')
    fill_in(:player_name, with: 'Human')
    click_button('Submit')
    expect(page).to have_content('Human vs AI')
  end
end