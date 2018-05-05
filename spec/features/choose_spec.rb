feature 'Weapon Choice' do
  scenario "choose rock, paper, or scissors" do
    visit('/')
    fill_in :player, with: "Charly"
    click_button 'Submit'
    
  end
end
