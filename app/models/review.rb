class Review < ActiveRecord::Base
# Criamos um Array de 5 elementos, ao invés de range.
	POINTS = (1..5).to_a

	belongs_to :user

	belongs_to :servico, :counter_cache => true

	attr_accessible :points

	validates_uniqueness_of :user_id, :scope => :servico_id

	validates_presence_of :points, :user_id, :servico_id

	validates_inclusion_of :points, :in => POINTS
end
