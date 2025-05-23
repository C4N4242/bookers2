class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one_attached :profile_image
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable

  has_many :books

  validates :name, presence: true, length: { minimum: 2, maximum: 20 }, uniqueness: true
  validates :introduction, length: { maximum: 50 }, allow_blank: true
  # email不要
  validates :email, allow_blank: true, uniqueness: true

  # nameでログインできるように
  def self.find_for_database_authentication(warden_conditions)
    conditions = warden_conditions.dup
    if name = conditions.delete(:name)
      where(conditions).where(["name = :value", { value: name }]).first
    else
      where(conditions).first
    end
  end
end
