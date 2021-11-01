# frozen_string_literal: true

class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one_attached :avatar
  validate :avatar_extension, if: :was_attached?

  def avatar_extension
    extension = ['image/png', 'image/jpg', 'image/jpeg']
    errors.add(:avatar, message: :extension) unless avatar.content_type.in?(extension)
  end

  def was_attached?
    avatar.attached?
  end
end
