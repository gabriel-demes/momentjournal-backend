class UsersController < ApplicationController

    before_action :authenticate, only: [:me]

    def create
        user = User.new(user_params)
        user[:code] = Randomstring.generate(6)
        user.save
        render json: user
    end

    def index
        users = User.all
        render json: users
    end

    def show
        user = User.find(params[:id])
        render json: user
    end

    def login
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            token = JWT.encode({user_id: user.id}, ENV["JWT_SECRET"], 'HS256')
            render json: {user: UserSerializer.new(user), token: token}
        else
            render json: {errors: ["Invalid username/password"]}, status: :unauthorized
        end
    end

    def signup
        # byebug
        user = User.new(user_params)
        user.password=params["password"]
        user.save
        if user.valid?
            token = JWT.encode({user_id: user.id}, ENV["JWT_SECRET"], 'HS256')
            render json: {user: UserSerializer.new(user), token: token}, status: :created
        else
            render json: { errors: user.errors.full_messages}, status: :unprocessable_entity
        end
    end

    def me
        render json: @user
    end

    private
    def user_params
        params.require(:user).permit(:name, :username, :password, :email)
    end
end
