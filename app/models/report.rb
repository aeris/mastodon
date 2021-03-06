# frozen_string_literal: true

class Report < ApplicationRecord
  belongs_to :account
  belongs_to :target_account, class_name: 'Account'

  scope :unresolved, -> { where(action_taken: false) }
  scope :resolved,   -> { where(action_taken: true) }
end
