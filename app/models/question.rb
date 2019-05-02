# frozen_string_literal: true

class Question < ApplicationRecord
  has_many :answers, dependent: :destroy
  has_many :subscriptions, dependent: :destroy
  has_many :attaches, as: :attachable, dependent: :destroy
  accepts_nested_attributes_for :attaches, reject_if: :all_blank, allow_destroy: true
  belongs_to :user
  belongs_to :house
  belongs_to :entrance

  scope :lastday, -> { where(updated_at: Time.now - 1) }

  after_create :create_subscribe_for_author
  after_create :notify_the_subscriber

  validates :title,   presence: true, length: { in: 2..300 }
  validates :body,    presence: true, length: { minimum: 2, maximum: 1000 }
  validates :user_id, presence: true

  private

  def notify_the_subscriber
    # AnswerNoticeJob.perform_later(self)
  end

  def create_subscribe_for_author
    # Subscription.create(user: self.user, question: self)
  end
end
