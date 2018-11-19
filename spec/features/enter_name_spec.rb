feature 'Testing form' do

  scenario "Can accept input of player's name" do
    visit('/')
    fill_in :player_name, with: 'Darryl'
    find('#play').click
    expect(page).to have_content 'DARRYL'
  end

end
