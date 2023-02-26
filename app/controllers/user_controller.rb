class UserController < ApplicationController

    def get_user
      # params = JSON.parse(params[:data])
      user = User.find_by(phone_no: params[:phone_no])
      if user.nil?
        return false
      end
      profile = Profile.find_by(user_id: user.id)&.data
      render json: {user: user, profile: profile}
    end

    def create_user
      # params = JSON.parse(params[:data])
      user = User.create!(name: params[:name], phone_no: params[:phone_no])
      data = params[:data]
      profile = Profile.create!(user_id: user.id, profile_type: data[:profile_type], data: data)
    end

  end
  
