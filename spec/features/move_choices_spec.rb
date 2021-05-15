feature 'view move choices' do 
  scenario "see rock" do 
    visit('/')
    fill_in :player_name, with: 'Toby'
    click_button "Submit"
    expect(page).to have_selector(:link_or_button, 'Rock') 
  end
end