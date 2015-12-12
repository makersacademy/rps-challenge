feature 'Game outcomes' do
  scenario 'when I lose, I should get told it' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
    single_player_login
    choose 'Rock'
    click 'Play!'
    expect(page).to have_content 'you lost'
  end

  scenario 'when I win, I should get told it' do

  end

  scenario 'when I draw, I should get told it' do

  end
end
