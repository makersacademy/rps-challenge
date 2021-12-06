feature 'Select RPS' do
  let(:player) { double('James', :name => 'James')}
  scenario 'player can select rock, paper, or scissors  ' do
    sign_in_and_play
    expect(page).to have_field 'ROCK'
    expect(page).to have_field 'PAPER'
    expect(page).to have_field 'SCISSORS'
    expect(page).to have_button 'Submit'
  end

  scenario 'player sees choice confirmed' do
    sign_in_and_play
    choose 'PAPER'
    click_button 'Submit'
    expect(page).to have_content "#{player.name} chose PAPER"
  end
end