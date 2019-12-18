require 'rails_helper'
RSpec.feature "ユーザー機能", type: :feature do

  background do
    FactoryBot.create(:user)
    FactoryBot.create(:second_user)
  end

  scenario "ユーザー登録" do
    visit new_user_registration_path
        fill_in '名前', with: 'user'
        fill_in 'メールアドレス', with: 'user@user.com'
        fill_in 'パスワード', with: 'password'
        fill_in '確認用パスワード', with: 'password'
        click_button '新規登録'
        expect(page).to have_content 'アカウント登録が完了しました'
    end

    scenario "ログイン機能" do
      visit root_path
          fill_in 'メールアドレス', with: 'user1@user.com'
          fill_in 'パスワード', with: 'password'
          click_button 'ログイン'
          expect(page).to have_content 'ログインしました。'
end

    scenario "ログアウト機能" do
      visit root_path
          fill_in 'メールアドレス', with: 'user1@user.com'
          fill_in 'パスワード', with: 'password'
          click_button 'ログイン'
          click_link 'ログアウト'
          expect(current_path).to eq user_session_path
end

    scenario "未ログイン時のアクセス制限" do
      visit recipes_path
      expect(page).to have_content 'アカウント登録もしくはログインしてください'
    end
end
