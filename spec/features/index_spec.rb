feature 'Index Page' do
  scenario 'Prints Welcome Messages' do
    enter
    @@welcome_messages.each do |message|
      expect(page).to have_content message
    end
  end
end
