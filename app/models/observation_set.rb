class ObservationSet < ActiveRecord::Base
	belongs_to :user
	belongs_to :patient
  def ews
    score = ews_score_for_resp +
            ews_score_for_supplemental_o2 +
            ews_score_for_o2_saturation +
            ews_score_for_temperature +
            ews_score_for_heart_rate +
            ews_score_for_consciousness
    score = 10 if score > 10
    score
  end


  def ews_score_for_resp
    case
    when self.respiratory_rate > 35 || self.respiratory_rate < 5 then 10
    when self.respiratory_rate > 25 || self.respiratory_rate < 8 then 3
    when self.respiratory_rate > 21 then 2
    when self.respiratory_rate < 11 then 1
    else
      0
    end
  end

  def ews_score_for_supplemental_o2
    case
    when supplemental_o2.blank? then 2
    else
      0
    end
  end

  def ews_score_for_o2_saturation
    case
    when o2_saturation > 95 then 0
    when o2_saturation > 93 then 1
    when o2_saturation > 91 then 2
    when o2_saturation < 91 then 3
    else
      0
    end
  end

  def ews_score_for_blood_pressure
    case
    when blood_pressure_min < 70 then 10
    when blood_pressure_min < 90 || blood_pressure_max > 219 then 3
    when blood_pressure_min < 100 then 2
    when blood_pressure_min < 110 then 1
    else
      0
    end
  end

  def ews_score_for_temperature
    case
    when temperature > 39 || temperature < 35 then 2
    when temperature > 38 || temperature < 36 then 1
    else
      0
    end
  end

  def ews_score_for_heart_rate
    case
    when heart_rate > 139 || heart_rate < 40 then 10
    when heart_rate > 129 then 3
    when heart_rate > 109 || heart_rate < 50 then 2
    when heart_rate > 89 then 1
    else
      0
    end
  end

  def ews_score_for_consciousness
    case
    when level_of_consciousness == "Unresponsive" then 10
    when level_of_consciousness == "Voice/Pain" then 3
    else
      0
    end
  end

end
