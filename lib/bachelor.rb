def get_first_name_of_season_winner(data, season)
  data.each do |the_season, info|
    if the_season == season
      info.each do |array|
        if array["status"] == "Winner"
          return array["name"].split(" ")[0]
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |the_season, info|
    info.each do |array|
      if array["occupation"] == occupation
        return array["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  number = 0;
  data.each do |the_season, info|
    info.each do |array|
      if array["hometown"] == hometown
        number += 1
      end
    end
  end
  return number
end

def get_occupation(data, hometown)
  data.each do |the_season, info|
    info.each do |array|
      if array["hometown"] == hometown
        return array["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  average = 0
  i = 0
  data.each do |the_season, info|
    if the_season == season
      info.each do |array|
        puts "#{array["name"]} is #{array["age"]} years old."
        if array["age"] != ""
          average = average + array["age"].to_i
          i += 1
        end
      end
    end
  end
  average = (average.to_f/i).round
  return average
end
