
feature 'sign up' do

  scenario 'a new single player signing up' do

    visit('/')
    fill_in :player_one, with: "Steve Zissou"
    click_button 'play'
    expect(page).to have_content "Steve Zissou"

  end

end
