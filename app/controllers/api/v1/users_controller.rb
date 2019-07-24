class Api::V1::UsersController < ApiController
  before_action :set_user, only: [:show, :update]

  # ActiveRecordのレコードが見つからなければ404 not foundを応答する
  rescue_from ActiveRecord::RecordNotFound, with: :render_status_404
  
  # 拾えなかったExceptionが発生したら500 Internal server errorを応答する
  rescue_from Exception, with: :render_status_500

  def index
    users = User.all
    render json: users
  end

  def show
    render json: @user
  end

  def update
    if @user.update_attributes(user_params)
      head :no_content
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

    def set_user
      @user = User.find(params[:id])
    end
    
    def user_params
      params.fetch(:user, {}).permit(:email, :name, :status, :categoly, :description)
    end

    def render_status_404(exception)
      render json: { errors: [exception] }, status: 404
    end

    def render_status_500(exception)
      render json: { errors: [exception] }, status: 500
    end
end
