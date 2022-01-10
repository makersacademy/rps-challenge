feature "player names" do
  scenario "show player names" do
    sign_in_and_play
    
    save_and_open_page

    expect(page).to have_content 'Vanessa'
    
  end
end

feature 'Enter names' do
  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content 'Vanessa'
  end
end
