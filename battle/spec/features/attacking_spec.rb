require 'spec_helper'

feature 'attacking player 2' do
  scenario 'player 1 attacks player 2' do
    after_first_attack
    expect(page).to have_content "UH OH. Flora attacked Lily!"
  end

  scenario 'attacking player 2 reduces their hitpoints' do
    after_first_attack
    expect(page).to have_content "Player 2 = Lily, they have 40 hit points"
  end

  scenario 'player 2 attacks player 1' do
    after_first_attack
    click_button "Attaaaaaaack!" # Player2 attacks player1 on /attack page
    expect(page).to have_content "UH OH. Lily attacked Flora!"
  end

  scenario 'attacking player 1 reduces their hitpoints' do
    after_first_attack
    click_button "Attaaaaaaack!" # Player2 attacks player1 on /attack page
    expect(page).to have_content "Player 1 = Flora, they have 40 hit points"
  end
end  
