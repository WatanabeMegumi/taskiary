# app/controllers/users/registrations_controller.rb
class Users::RegistrationsController < Devise::RegistrationsController
  protected

  # 更新後のリダイレクト先をマイページに設定
  def after_update_path_for(resource)
    user_path(resource)  # 例: /users/3 にリダイレクト
  end
end
