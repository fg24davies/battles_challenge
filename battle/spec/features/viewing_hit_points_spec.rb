require 'spec_helper'

feature 'seeing hit points' do

  scenario 'view the other players hit points' do
    sign_in_and_play
    expect(page).to have_content "Player 2 = Lily, they have 50 hit points"
  end
end  