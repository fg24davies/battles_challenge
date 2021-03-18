require 'spec_helper'

feature 'attacking player 2' do
  scenario 'player 1 attacks player 2' do
    sign_in_and_play
    click_button "Attaaaaaaack!"
    expect(page).to have_content "UH OH. Flora attacked Lily!"
  end

  scenario 'attack reduces hitpoints' do
    sign_in_and_play
    click_button "Attaaaaaaack!"
    expect(page).to have_content "they have 40 hit points"
  end
end  