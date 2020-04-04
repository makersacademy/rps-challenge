RSpec.feature 'entering a name', type: :feature do
  scenario 'it takes you to the /play page' do
    enter_name_and_play
    
    expect(page).to have_current_path '/play'
  end

  scenario 'it starts a new game of rock-paper-scissors' do
    enter_name_and_play

    expect(page).to have_content 'Sam vs MA-RPS3000'
  end
end
