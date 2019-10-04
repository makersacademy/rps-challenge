feature 'Enter rock, paper or scissors' do
  scenario 'sumbitting choice' do
    visit('/play')
    click_button 'rock'
    selectors = ["And the winner is: Eoin", "And the winner is: God", "And the winner is: Both! Or neither, depending on your life outlook."]
    glyph_exists = selectors.any? do |selector|
      page.has_content? selector
    end
    expect(glyph_exists).to be true
  end
end
