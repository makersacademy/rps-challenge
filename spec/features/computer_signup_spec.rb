
feature 'sign up' do

  scenario 'the computer can play' do

    visit('/')
    fill_in :player_one, with: "Steve Zissou"
    click_button 'play'
    expect(page).to have_content "CPU"

  end

end
