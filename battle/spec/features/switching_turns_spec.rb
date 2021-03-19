require 'spec_helper'

feature 'switching turns' do
  scenario 'players can take turns' do
    sign_in_and_play
    click_button "Attaaaaaaack!"
    expect(page).to have_content "It is Lily's turn"
  end
end  