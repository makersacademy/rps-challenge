feature 'Enter players' do 
  scenario 'player should add names' do 
    visit '/'
    fill_in :P1, with: "P1"
    fill_in :P2, with: "P2" 
    click_button "Create players"
    expect(page).to have_content "P1 vs P2"
  end
end