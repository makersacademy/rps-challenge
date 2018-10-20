feature 'Selects and option' do

  before do
    single_sign_in
  end
  scenario 'Asks player for the move that they want to play' do
    expect(page).to have_content "What move would you like to play Caitlin?"
  end

  scenario 'selects rock' do
    find_button('rock').click
    expect(page).to have_content "Caitlin's move was rock"
  end

  scenario 'selects paper' do
    find_button('paper').click
    expect(page).to have_content "Caitlin's move was paper"
  end

  scenario 'selects scissors' do
    find_button('scissors').click
    expect(page).to have_content "Caitlin's move was scissors"
  end
end

feature 'Computers move is returned' do

  scenario 'when its move is rock' do
    allow_any_instance_of(Array).to receive(:sample).and_return('rock')
    single_sign_in
    find_button('rock').click
    expect(page).to have_content "Computer's move was rock"
  end

  scenario 'when its move is paper' do
    allow_any_instance_of(Array).to receive(:sample).and_return('paper')
    single_sign_in
    find_button('rock').click
    expect(page).to have_content "Computer's move was paper"
  end

  scenario 'when its move is scissors' do
    allow_any_instance_of(Array).to receive(:sample).and_return('scissors')
    single_sign_in
    find_button('rock').click
    expect(page).to have_content "Computer's move was scissors"
  end
end
