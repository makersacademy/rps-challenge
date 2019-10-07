feature 'Player attacks' do
  scenario 'Player chooses attack method' do
    single_sign_in_and_play
    click_button 'Paper'
    expect(page).to have_content "Player1 chose Paper."
  end
end

feature 'Player wins' do
  scenario 'Player chooses attack method and beats computer' do
    allow_any_instance_of(Array).to receive(:sample) { 'Rock' }
    single_sign_in_and_play
    click_button 'Paper'
    expect(page).to have_content 'Computer chose Rock.'
    expect(page).to have_content 'Player1 is the victor!'
  end
end
