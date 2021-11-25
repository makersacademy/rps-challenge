# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature 'playing a game' do
  before do
    visit('/')
    fill_in :name, with: 'Leah'
    click_button 'Submit'
  end
  # As a markerteer 
  # So I can play a game
  # I want to see the shapes I can play
  scenario 'see the shape options' do
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end

  # As a markerteer 
  # So I can play a game
  # I want to choose the shapes to play
  scenario 'choose a shape' do
    click_button 'Rock'
    expect(page).to have_content 'You chose Rock!'
  end

  # As a markerteer 
  # So I can play a game
  # I want the game to choose an option
  scenario 'choose a Rock' do
    click_button 'Rock'

    message = find(:css, "#opponent").text.strip

    expect(possible_messages).to include message 
  end

  def possible_messages
    [:rock, :paper, :scissors].map { |shape| "Opponent chose #{shape.to_s.capitalize}!"}
  end

end