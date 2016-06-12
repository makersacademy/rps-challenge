feature 'Play Game' do

  before do
    visit '/'
    fill_in 'name', with: 'Steve'
    click_button 'Submit'
  end

  scenario 'see player items' do
    expect(page).to have_button('Rock')
    expect(page).to have_button('Paper')
    expect(page).to have_button('Scissors')
  end

  scenario 'player chooses an item' do
    click_button 'Rock'
    expect(page).to have_content "You selected Rock"
  end


end
