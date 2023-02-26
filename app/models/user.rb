class User < ApplicationRecord

    has_many :profiles,  :class_name => "Profile"
    validates :phone_no, presence:true, uniqueness: true
end
