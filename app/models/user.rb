class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :invite_for => 2.weeks

  has_many :subordinates, class_name: "User",
                          foreign_key: "manager_id", dependent: :destroy
  has_many :expenses
  has_many :messages

  belongs_to :manager, class_name: "User", optional: true
  belongs_to :corporation, optional: true

  has_attachment :photo

end
