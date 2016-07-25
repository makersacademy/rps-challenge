require './app.rb'

feature 'results display' do
  scenario 'Rock/Rock draws' do
    allow(Kernel).to receive(:rand).and_return(0)
    sign_in_and_play
    click_button 'rock'
    visit '/result'
    expect(page).to have_content('draw')
  end
  scenario 'Player wins' do
    allow(Kernel).to receive(:rand).and_return(0)
    sign_in_and_play
    click_button 'paper'
    visit '/result'
    expect(page).to have_content('Jack')
  end
  scenario 'Com wins' do
    allow(Kernel).to receive(:rand).and_return(0)
    sign_in_and_play
    click_button 'scissors'
    visit '/result'
    expect(page).to have_content('Com')
  end
end
