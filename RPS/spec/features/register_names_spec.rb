feature "player names" do
  scenario "show player names" do
    visit('/')
    fill_in :player_1, with: 'Vanessa'
    fill_in :player_2, with: 'Silvia' 
    click_button 'Submit'
    
    save_and_open_page

    expect(page).to have_content 'Vanessa'
    expect(page).to have_content 'Silvia'
  end
end

feature 'Enter names' do
  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content 'Vanessa'
    expect(page).to have_content 'Silvia'  
  end
end
