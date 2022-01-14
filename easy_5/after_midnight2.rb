MINUTES_PER_HOUR = 60
MINUTES_PER_DAY = 1440

def after_midnight(hours_24_format)
  hours, minutes = hours_24_format.split(':').map(&:to_i)
  alpha_minutes = hours * MINUTES_PER_HOUR + minutes
  return 0 if alpha_minutes >= 1440

  alpha_minutes
end

def before_midnight(hours_24_format)
  alpha_minutes = after_midnight(hours_24_format)
  return 0 if alpha_minutes == 0

  MINUTES_PER_DAY - alpha_minutes
end

p before_midnight('01:29  ') #== 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00')  == 0
p before_midnight('24:00') == 0