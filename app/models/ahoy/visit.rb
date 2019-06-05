# frozen_string_literal: true

# rubocop:disable ClassAndModuleChildren
class Ahoy::Visit < ApplicationRecord
  self.table_name = "ahoy_visits"

  has_many :events, class_name: "Ahoy::Event"
  belongs_to :user, optional: true
end
# rubocop:enable ClassAndModuleChildren