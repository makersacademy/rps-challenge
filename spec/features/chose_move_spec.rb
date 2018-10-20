feature 'Choose move' do

  scenario 'have rules' do
    sign_in
    expect(page).to have_content "Rules\nRock beats Scissors\nScissors beats Paper\nPaper beats Rock\n"
  end

  scenario 'shows options' do
    sign_in
    expect(page).to have_xpath("//img[contains(@src,'rock.png')]")
    expect(page).to have_xpath("//img[contains(@src,'paper.png')]")
    expect(page).to have_xpath("//img[contains(@src,'scissors.png')]")
  end

  scenario 'chose a move' do
    sign_in
  end

end
