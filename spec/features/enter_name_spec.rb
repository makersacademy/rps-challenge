feature 'register' do
  scenario 'player can enter name' do
    visit('/')
    expect(page).to have_content 'Ready to try your luck?'
  end

  scenario 'player can enter name' do
    visit('/')
    expect(page).to have_css("input")
  end

  scenario 'name is shown at start of game' do
    
  end
end
