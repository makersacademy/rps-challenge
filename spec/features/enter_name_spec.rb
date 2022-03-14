feature 'Enter player name' do
  scenario 'player is asked to enter name' do
    visit('/')
    expect(page).to have_field 'name'
  end
  
  context 'player enters name and clicks submit' do
    before do
      sign_in
    end

    scenario 'player sees their name returned returned' do
      expect(page).to have_content 'Hello Jonny'
    end

    scenario 'it prompts choice of weapon' do
      expect(page).to have_content 'Choose your weapon'
    end
  end
end
