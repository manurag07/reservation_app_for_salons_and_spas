class RegistrationsController < Devise::RegistrationsController
  private

  def sign_up_params
    params.require(:user).permit(:company_name, :gstin, :pan_number,
                                 :address, :days_of_operations,
                                 :hours_of_operations, :no_of_chairs,
                                 :user_type, :email, :password, :password_confirmation, :current_password)
  end

  def account_update_paramPs
    params.require(:user).permit(:company_name, :gstin, :pan_number,
                                 :address, :days_of_operations,
                                 :hours_of_operations, :no_of_chairs,
                                 :user_type, :email, :password, :password_confirmation, :current_password)
  end
end
