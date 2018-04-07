class Answer < ApplicationRecord
  has_many :attaches, as: :attachable, dependent: :destroy
  accepts_nested_attributes_for :attaches, reject_if: :all_blank, allow_destroy: true
  belongs_to :question, touch: true
  belongs_to :user

  validates :body,        presence: true, length: { minimum: 2, maximum: 1000 }
  validates :question_id, presence: true
  validates :user_id,     presence: true

  # after_create { AnswerNoticeJob.perform_later(self) }
  # after_create { Subscription.find_or_initialize_by(user: self.user, question: self.question).save! }
end
