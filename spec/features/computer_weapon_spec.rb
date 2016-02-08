visual_debug

feature 'Randomizes opposing weapon choice' do
  before(:each) do
    sign_in_and_play
    choose 'Rock'
    click_button 'Ready'
  end

  scenario 'computer returns opposing weapon' do
    allow_any_instance_of(Array).to receive(:sample).and_return('Rock')
    expect(page).to have_content('Penelope plays Rock')
  end

  scenario 'Game announces a winner' do
    expect(page).to have_content('It\'s a tie!')
  end
end