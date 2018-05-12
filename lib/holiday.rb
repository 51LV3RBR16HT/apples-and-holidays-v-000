require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays

  # My original code:
  # holiday_hash[:winter][:christmas] << supply
  # holiday_hash[:winter][:new_years] << supply

  # What if we want to add more winter holidays in the future without changing
  # the code?
  holiday_hash[:winter].each { |holiday, supplies| supplies << supply }
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |season, holiday|
      puts "#{season.capitalize}:"
      holiday.each do |holiday_name, supplies|
        puts " #{holiday_name.to_s.split( pattern "_").collect {|split_name| split_name.capitalize}.join( separator " ")}: #{supplies.join(", ")}"
      end
    end
  end

# Original Code:
  #    seasons_string = seasons.to_s
  #    seasons_array = seasons_string.split("_")
  #    seasons_array.map! do |seasons|
  #    seasons.capitalize!
  #  end
  #     puts "#{seasons_array.join(" ")}:"
  #   holidays.each do |holiday, supplies|
  #     holiday_string = holiday.to_s
  #     holiday_array = holiday_string.split("_")
  #     holiday_array.each do |holiday|
  #       holiday.capitalize!
  #     end
  #     puts "  #{holiday_array.join(" ")}: #{supplies.join(", ")}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  holidays_with_bbqs = []
    holiday_hash.each do |seasons, holidays|
      holidays.each do |holiday, supplies|
    if supplies.include?("BBQ")
      holidays_with_bbqs << holiday
      end
    end
  end
  holidays_with_bbqs
end
