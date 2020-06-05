class Post < ApplicationRecord
  belongs_to :user, class_name: "CrediwatchAuth::User"
  has_many :comments, dependent: :destroy
end
