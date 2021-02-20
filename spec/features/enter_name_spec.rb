=begin
feature "Checks if text is being displayed" do
    scenario 'shows text' do
      visit('/')
      expect(page).to have_content 'Rock, Paper, Scissors!'
    end
  end
=end

  feature 'entering a name to play' do
      scenario 'Submitting name to play' do
        sign_in_and_play
        expect(page).to have_content 'LEE vs AI'
      end
  end