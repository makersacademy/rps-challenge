def register_name # there must be a better way to do this
  visit '/'
  fill_in :name, with: 'Lagertha'
  click_button 'Submit'
end

feature 'Registering' do
  scenario 'player can register their name' do
    register_name
    expect(page).to have_content('Thank you, Lagertha')
  end  
end

feature 'Making a move' do
  scenario 'player is offered a choice of rock or paper' do
    register_name
    expect(page).to have_content('Make your move: Rock or Paper')
  end
end

feature 'Winning or losing' do
  let(:computer_move) { 'Rock' }
  scenario 'player wins with paper' do
    register_name
    click_button 'Rock'
    expect(page).to have_content('Lagertha wins!')
  end

end