class MyPromotion < ActiveRecord::Base
  validates_presence_of :name,:start_date,:end_date
  
  has_many :promotion_categories
  has_many :image_pubs, :order => :position, :dependent => :destroy

  #has_and_belongs_to_many :promotion_categories, :class_name => "MyPromotion", :join_table => "promotion_categories" , :association_foreign_key => "my_promotion_id"
end