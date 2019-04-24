sma = 30;  // semi-minor axis
smb = 20; // semi-major axis
sides=6;
polygon(
    [ for (a = [0 : 1 : sides -1]) [ sma * sin(a*360/sides), smb * cos(a*360/sides) ] ]
);