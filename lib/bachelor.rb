def get_first_name_of_season_winner(data, season)
  data[season].each do |actor|
    if actor["status"] == "Winner"
      return actor["name"].split.first
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season,actor|
    actor.each do |index|
      if index["occupation"] == occupation
          return index["name"]
        end
      end
    end
  end


def count_contestants_by_hometown(data, hometown)
  counter = 0
    data.each do |season, actor|
      actor.each do |index|
        if index["hometown"] == hometown
          counter += 1
        end
      end
    end
    counter
end

def get_occupation(data, hometown)
  data.each do |season, acter|
    acter.each do |index|
      if index["hometown"] == hometown
        return index["occupation"]
      end
    end
  end
end


def get_average_age_for_season(data, season)
  counter = 0
  counterAge = 0
  data[season].each do |actor|
    counter += 1
    counterAge += actor["age"].to_f
  end
  return (counterAge / counter).round
end	
end
