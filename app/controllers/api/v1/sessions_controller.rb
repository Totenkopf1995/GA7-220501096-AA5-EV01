class Api::V1::SessionsController < ApplicationController
  def create
    user = User.find_for_database_authentication(email: params[:email])
    if user&.valid_password?(params[:password])
      render json: { message: 'Signed in successfully' }, status: :ok
    else
      render json: { errors: ['Invalid email or password'] }, status: :unauthorized
    end
  end

  def destroy
    # Implementar cierre de sesión si es necesario.
  end
end