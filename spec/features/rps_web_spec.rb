
feature 'Testing infrastructure' do
  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Enter Your Name'
  end

  feature 'Enable players to enter names' do
    scenario 'testing name input from form' do
      sign_and_play
      expect(page).to have_content "Bob Choose your move!"
    end
  end
end

feature 'play game' do
  scenario 'can enter move' do
    srand(67810)
    sign_and_play
    fill_in 'move', with: 'rock'
    click_button 'Submit'
    expect(page).to have_content "It's a Draw!"
  end
end

  feature 'show results' do
    scenario 'load draw erb page upon draw result' do
      sign_and_play
      fill_in 'move', with: 'rock'
      click_button 'Submit'
      expect(page).to have_content 'Thanks for playing'
    end
  end
