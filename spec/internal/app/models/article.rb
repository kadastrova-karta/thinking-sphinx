# frozen_string_literal: true

class Article < ActiveRecord::Base
  belongs_to :user, :optional => true
  has_many :taggings
  has_many :tags, :through => :taggings

  ThinkingSphinx::Callbacks.append(self, :behaviours => [:sql, :updates])
end
