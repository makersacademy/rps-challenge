feature 'Index Page' do
  scenario 'Prints Welcome Messages' do
    sign_in
    @@welcome_messages.each do |message|
      expect(page).to have_content message
    end
  end
end
