class Drink < ActiveRecord::Base

	validates :drink_type, presence: true
	validates :name, presence: true
	validates :row_position, presence: true

  COLUMN_HEADERS = { "1" => "wine",
                     "3" => "other",
                     "5" => "beer",
                     "7" => "cocktail",
                     "10" => "whiskey" }

  scope :beer,      -> { where(drink_type: "beer")}
  scope :cocktail,  -> { where(drink_type: "cocktail")}
  scope :other,     -> { where(drink_type: "other")}
  scope :whiskey,   -> { where(drink_type: "whiskey")}
  scope :wine,      -> { where(drink_type: "wine")}

  def capitalized_name
    name.split(' ').map(&:capitalize).join(' ')
  end
end

