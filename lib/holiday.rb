require 'pry'
supply = "trash"
holiday_hash = {
  :winter => {
       :christmas => ["Lights", "Wreath"],
       :new_years => ["Party Hats"]
     },
     :summer => {
      :fourth_of_july => ["Fireworks", "BBQ"]
    },
   :fall => {
      :thanksgiving => ["Turkey"]
    },
   :spring => {
      :memorial_day => ["BBQ"]
    }
   }

def second_supply_for_fourth_of_july(holiday_hash)
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |season, holiday|
    if season == :winter
      holiday.each do |holiday, supplies| 
        supplies << supply
      end
    end
  end
  holiday_hash
end
#add_supply_to_winter_holidays(holiday_hash, supply) 

def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash.each do |season, holiday|
    if season == :spring
      holiday.each do |holiday, supplies| 
        supplies << supply
      end
    end
  end
  holiday_hash
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
   holiday_hash[season][holiday_name] = supply_array
   holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  winter_supplies = []
  holiday_hash.each do |season, holiday|
    if season == :winter
      winter_supplies = holiday.values
    end
  end
  winter_supplies.flatten
end

season = :spring
holiday_name = :martin_luther_king
supply_array = ["chips"]
holiday_hash =
      {
      :winter => {
        :christmas => ["Lights", "Wreath"],
        :new_years => ["Party Hats"]
      },
      :summer => {
        :fourth_of_july => ["Fireworks", "BBQ"]
      },
      :fall => {
        :thanksgiving => ["Turkey"]
      },
      :spring => {
        :memorial_day => ["BBQ"]
      }
  }

  def all_supplies_in_holidays(holiday_hash)
    def converting_holidays(holiday)
      empty = []
      holiday.to_s.split("_").each do |string|
        empty << string.capitalize
      end
      empty.join(" ")
    end
    def converting_supplies(array)
      def normal_array(array)
        empty = []
        array.collect do |string|
          if string == "BBQ"
            empty << string
          else
            empty << string.capitalize
          end
        end
        empty.join(", ")
      end
      def short_array(array)
        empty = []
        array = array.join
        array = array.split
        array.each do |string|
          empty << string.capitalize
        end
        empty.join(" ")
      end
      if array.length > 1 || array.include?("BBQ")
        normal_array(array)
      else
        short_array(array)
      end
    end
    holiday_hash.each do |season, holiday|
      seasons = season.to_s.capitalize!.split
      puts "#{seasons.join}:"
      holiday.each do |holiday, supplies|
        puts "  #{converting_holidays(holiday)}: #{converting_supplies(supplies)}"
      end
    end
  end
all_supplies_in_holidays(holiday_hash)

def all_holidays_with_bbq(holiday_hash)
    empty = []
    holiday_hash.each do |season, holiday|
      holiday.each do |holiday, supplies|
        if supplies.include?("BBQ")
          empty << holiday
        end
      end
    end
    empty
  end







