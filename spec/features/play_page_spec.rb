require_relative 'web_helpers'

feature 'allows user to visit play page which should display their name' do
  scenario 'user goes to play page and see\'s their name' do
    enter_name
    expect(page).to have_content "Ollie"
  end
end

feature 'can win game' do
  scenario 'if player selects rock and bot selects scissors then player wins' do
    allow_any_instance_of(Bot).to receive(:move).and_return('scissors')
    enter_name
    click_button 'rock'
    expect(page).to have_content 'You won'
  end
end