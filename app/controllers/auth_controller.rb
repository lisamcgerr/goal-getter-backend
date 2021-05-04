class AuthController < ApplicationController

    def create
        # user = User.find_by(username: params[:username])
    
        # if user && user.authenticate(params[:password])
        #   payload = { user_id: user.id }
        #   hmac_secret = 'S3CR3T'
    
        #   token = JWT.encode(payload, hmac_secret, 'HS256')
    
        #   render json: { user: UserSerializer.new(user), token: token } 
        # else
        #   render json: { error: 'Invalid username or password.'}
        # end
        render json: {hello: world}
          
    end
    
    def show
        token = request.headers[:Authorization].split(' ')[1]

        begin
          decoded_token = JWT.decode(token, 'S3CR3T', true, { algorithm: 'HS256' })
        rescue JWT::Decode::Error
          
        end
        decoded_token = JWT.decode(token, 'S3CR3T', true, { algorithm: 'HS256' })
        user_id = decoded_token[0]['user_id']
        user = User.find(user_id)

          if user
            render json: user
          else 
            render json: { error: 'Invalid token.'}
          end
    end
end