require 'app'

feature '/result' do
  scenario 'shows the users name' do
    choose_name_and_weapon
    expect(page).to have_content 'Adam'
  end

  scenario 'shows the users choice of Rock, Paper, Scissors' do
    choose_name_and_weapon
    expect(page).to have_content 'you chose rock'
  end

  scenario 'shows the computers choice' do
    allow_any_instance_of(Computer).to receive(:choose_weapon).and_return(:paper)
    choose_name_and_weapon
    expect(page).to have_content 'Your opponent randomly chose paper'
  end

end

feature '/result winning selections' do

  it 'calculates a draw if both choose rock' do
    allow_any_instance_of(Computer).to receive(:choose_weapon).and_return(:rock)
    choose_name_and_weapon
    expect(page).to have_content "It's a draw!"
  end

  it 'returns a loss if player chooses rock and computer, paper' do
    allow_any_instance_of(Computer).to receive(:choose_weapon).and_return(:paper)
    choose_name_and_weapon
    expect(page).to have_content "You lost"   
  end

  it 'returns a win if player chooses rock and computer, scissors' do
    allow_any_instance_of(Computer).to receive(:choose_weapon).and_return(:scissors)
    choose_name_and_weapon
    expect(page).to have_content "You're a winner baby!" 
  end

end
