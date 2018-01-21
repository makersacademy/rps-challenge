feature 'Enter the name of the player' do
  scenario 'Submitting name of the player' do
    visit('/')
    fill_in :player, with: 'Agata'
    click_button "PLAY"
    expect(page).to have_content "Rock Paper Scissors"
  end
end

feature "Selection" do
  scenario 'Rock' do
    visit('/')
    fill_in :player, with: 'Agata'
    click_button "PLAY"
    click_button "Rock"
    expect(page).to have_content "Agata: Rock"
  end
  
end
