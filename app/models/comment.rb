class Comment < ApplicationRecord
  belongs_to :user, class_name: "CrediwatchAuth::User"
  belongs_to :post
end
