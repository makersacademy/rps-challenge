feature 'playing the game' do

  scenario 'checking if there are 3 options to choose from' do
    allow_any_instance_of(Kernel).to receive(:rand).and_return(1)
    visit('/')
    fill_in(:player_name, with: 'John')
    click_button('Play')
    expect(page).to have_content('Rock paper scissors')
  end

end
