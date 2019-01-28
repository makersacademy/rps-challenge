require_relative './helpers'

feature 'loading page' do

  scenario 'it should load a starting page' do
    visit('/')
    expect(page).to have_content 'Welcome to Rock, Paper, Scissors!!!'
  end

  scenario 'it should allow me to enter my name' do
    fill_name_in
    expect(page).to have_content 'Let\'s play RPS, are you ready test?'
  end

end

feature 'play game' do

  scenario 'it show a player winning' do
    allow_any_instance_of(Game).to receive(:random_move) { "Rock" }
    fill_name_in
    select("Paper", from: "moves").select_option
    click_button("Go")
    expect(page).to have_content 'test wins'
  end

  scenario 'it show the cpu winning' do
    allow_any_instance_of(Game).to receive(:random_move) { "Rock" }
    fill_name_in
    select("Scissors", from: "moves").select_option
    click_button("Go")
    expect(page).to have_content 'cpu wins'
  end

  scenario 'it should show a draw' do
    allow_any_instance_of(Game).to receive(:random_move) { "Rock" }
    fill_name_in
    select("Rock", from: "moves").select_option
    click_button("Go")
    expect(page).to have_content 'It is a draw'
  end
end
