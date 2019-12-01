

feature 'let play a game' do

  before do
    visit('/')
    fill_in('player_1_name', with: 'Dave')
    click_button "Submit"
  end
  
  scenario 'see rock, paper or scissors' do
    expect(page).to have_button('Rock')
    expect(page).to have_button('Paper')
    expect(page).to have_button('Scissors')
  end

  scenario 'choose one option' do
    click_button 'Rock'
    expect(page).to have_text('You selected Rock')
  end

  scenario 'opponent chooses' do
    click_button 'Rock'
    expect(page).to have_text('selected Paper')
  end
end
