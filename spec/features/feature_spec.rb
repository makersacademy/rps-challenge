feature 'loading page' do

  scenario 'it should load a starting page' do
    visit('/')
    expect(page).to have_content 'Welcome to Rock, Paper, Scissors!!!'
  end

  scenario 'it should allow me to enter my name' do
    visit('/')
    fill_in('name', with: 'test')
    click_button('OK')
    expect(page).to have_content 'Let\'s play RPS, are you ready test?'
  end

end

feature 'play game' do

  scenario 'it should start a game of RPS' do
    allow_any_instance_of(Game).to receive(:random_move) { "Rock" }
    visit('/')
    fill_in('name', with: 'test')
    click_button('OK')
    click_button('Begin game')
    select("Paper", from: "moves").select_option
    click_button("Go")
    expect(page).to have_content 'Player wins'
  end
end
