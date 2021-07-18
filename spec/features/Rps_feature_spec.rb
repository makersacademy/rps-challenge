require_relative '../../app.rb'

RSpec.feature 'RPS' do
  scenario 'is expected to have title on home page' do
    visit "/"
    expect(page).to have_text("Welcome!\nPlease enter your name:")
  end

  scenario 'name is correctly recorded' do
    visit "/"
    fill_in('player1name', with: 'Karim')
    click_button('Submit')
    expect(page).to have_text('Karim, pick your move:')
  end

  scenario 'Selecting your relevant move link will set game move correctly' do
    visit "/"
    fill_in('player1name', with: 'Karim')
    click_button('Submit')
    click_link('Rock')
    expect(page).to have_text('You selected Rock!')
    visit "/"
    fill_in('player1name', with: 'Karim')
    click_button('Submit')
    click_link('Paper')
    expect(page).to have_text('You selected Paper!')
    visit "/"
    fill_in('player1name', with: 'Karim')
    click_button('Submit')
    click_link('Scissors')
    expect(page).to have_text('You selected Scissors!')
  end

  scenario 'Works out winner correctly' do
    visit "/"
    fill_in('player1name', with: 'Karim')
    click_button('Submit')
    click_link('Rock')
    allow_any_instance_of(Game).to receive(:generate_move).and_return('Rock')
    allow_any_instance_of(Game).to receive(:player_win?).and_return(false)
    allow_any_instance_of(Game).to receive(:player_drew?).and_return(true)
    expect(page).to have_text('drew')
  end
end 