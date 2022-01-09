feature 'Select opponent' do
  scenario 'player can choose to play computer' do 
    visit '/'
    expect(page).to have_button "Play GameBot"
  end

  scenario 'player can choose to play a human' do 
    visit '/'
    expect(page).to have_button "Play Human"
  end
end