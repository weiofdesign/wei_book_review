class User < ActiveRecord::Base
  attr_accessible :age, :email, :first_name, :last_name


 def is_teen?
    (13...19).include?(age)
  end

  def has_long_name?
    (first_name + last_name).size > 10
  end

  def self.all_long_name
    self.all.select do |user|
      user.has_long_name?
    end
  end

  def self.all_teens
    self.all.select do |user|
      user.is_teen?
    end
  end
  
has_many :reviews

end

