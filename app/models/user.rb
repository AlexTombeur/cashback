class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :subordinates, class_name: "User",
                          foreign_key: "manager_id"
  has_many :expenses
  has_many :messages

  belongs_to :manager, class_name: "User"
  belongs_to :corporation

end
