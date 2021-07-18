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
    expect(page).to have_text('You selected rock!')
  end
end 