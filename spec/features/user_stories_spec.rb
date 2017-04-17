

describe 'User Stories' do

feature 'enter name' do
	scenario 'submitting and displaying name' do
		sign_in_and_play
		expect(page).to have_content 'Dave'
	end
end

# 	As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature 'Playing the game' do
  scenario "When I submit 'Scissors' I am told if I have won" do
    allow_any_instance_of(Array).to receive(:sample).and_return('Scissors')
    visit '/'
    fill_in :name, with: 'Dave'
    select('Scissors', from: "choice")
    click_button('Play!')
    expect(page).to have_content "The result is .... Dave won"
  end
end

feature 'Computer choice' do
  scenario "When I submit 'Scissors' I am told what the computer picked" do
    allow_any_instance_of(Array).to receive(:sample).and_return('Paper')
    visit '/'
    fill_in :name, with: 'Dave'
    select('Scissors', from: "choice")
    click_button('Play!')
    expect(page).to have_content "The computer's choice was Paper"
  end
end

# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

end
