% Circular Mean % 

hrs = hours(loc_hours);
deghrs = hrs*15;
sinsum = sum(sind(deghrs));
cossum = sum(cosd(deghrs));
hrsmean = atand(sinsum/cossum);
hrsmean = abs(hours(hrsmean/15))
hrsmean.Format = 'hh:mm'