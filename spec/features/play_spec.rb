feature 'Play Game' do

  before do
    sign_in_and_play
  end

  scenario 'see player items' do
    expect(page).to have_button('Rock')
    expect(page).to have_button('Paper')
    expect(page).to have_button('Scissors')
  end

  xscenario 'player chooses an item' do
    click_button 'Rock'
    expect(page).to have_content "You selected 'Rock'"
  end


end
