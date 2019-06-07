# frozen_string_literal: true

require 'friendly_id'

class User < ApplicationRecord
  include SettingsHelper
  extend FriendlyId

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable, :registerable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  rolify role_cname: 'Role', before_add: :clear_existing_roles!
  friendly_id :username, use: :slugged

  # Callbacks
  after_create :assign_default_role!

  # Validations
  validates :username, presence: true, uniqueness: { case_sensitive: false }
  validate :validate_username
  validates_presence_of :username, :slug, :email

  # Adding Alias
  alias_attribute :name, :username

  # Username Login
  attr_accessor :login

  def self.find_first_by_auth_conditions(warden_conditions)
    conditions = warden_conditions.dup
    if (login = conditions.delete(:login))
      where(conditions).where(['username = :value OR lower(email) = lower(:value)', { value: login }]).first
    elsif conditions[:username].nil?
      where(conditions).first
    else
      where(username: conditions[:username]).first
    end
  end

  def assign_default_role!
    default_role = settings("defaults.permissions.new_user.role", fatal_exception: true).to_sym
    add_role(default_role) if roles.blank?
  end

  # removes all roles before new role is added
  def clear_existing_roles!(_role = nil)
    self.roles = []
  end

  # returns the first role out of an array
  def role
    return roles.first.name unless roles.first.nil?
    "guest"
  end

end
