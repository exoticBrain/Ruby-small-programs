MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = 1440

def time_of_day(alpha_minutes)
    while (alpha_minutes < 0)
        alpha_minutes += MINUTES_PER_DAY
    end

    alpha_minutes = alpha_minutes % MINUTES_PER_DAY
    hours = alpha_minutes / 60
    minutes = alpha_minutes % 60
    
    format("%.2d:%.2d",hours,minutes)
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"

=begin
    input : integer => the number of minutes
    output: string => representing the time in 24h format

    Explicit requirement :
        - Return the time of day in 24 h format (hh:mm)
        - the method should accept any integer as it's input
        - the time is after midnight if the number of minutes is positive
        - the time is before midnight if the number of minutes is negative

    Data structure :
        - 
    Algorithm :
        - Write a method that takes an integer as param
        - create two variables 
            - hours
            - minutes
        - Check if the number is greather than 60 minutes
            -If so, store the divion of that number with 60 into minutes
            -store the remainder of that division into hours
=end