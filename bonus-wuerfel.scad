// Bonusplättchen: 27x27x32
// Wuerfel: 21mm

x = 135;
y = 65;
bodendicke = 1;
abrundung = 10;
hoehe = 20;
bonusplaettchen = 32;
bonusplaettchen_x = 27;

wuerfel = 20;
spiel = 2;

$fn = 100;
greifer = true;
greifer_wuerfel = true;

rand_x = (x-5*wuerfel-2*spiel-bonusplaettchen_x)/3;
rand_y = (y-2*wuerfel-2*spiel)/3;
rand_y_2 = (y-bonusplaettchen-spiel)/2;

if(!greifer_wuerfel && !greifer){
    difference(){
        cube([x,y,hoehe+bodendicke]);
        
        // Würfelreihe 1
        translate([2*rand_x+bonusplaettchen_x+spiel,rand_y,bodendicke]){
            cube([(5*wuerfel)+spiel, wuerfel+spiel, hoehe]);
        }
        
        // Würfelreihe 2
        translate([2*rand_x+bonusplaettchen_x+spiel,2*rand_y+wuerfel+spiel,bodendicke]){
            cube([(5*wuerfel)+spiel, wuerfel+spiel, hoehe]);
        }
        
        // Bonusplättchen
        translate([rand_x,rand_y_2,bodendicke]){
            cube([bonusplaettchen_x+spiel, bonusplaettchen+spiel, hoehe]);
        }
    }
} else if(greifer && !greifer_wuerfel){
    radius_bonus = (bonusplaettchen_x+spiel)/2;
    //radius_wuerfel = (wuerfel+spiel)/2;
    //rand_x = (x-5*wuerfel-2*spiel-bonusplaettchen_x-2*radius_wuerfel)/3;
    difference(){
        cube([x,y,hoehe+bodendicke]);
        
        // Würfelreihe 1
        translate([2*rand_x+bonusplaettchen_x+spiel,rand_y,bodendicke]){
            cube([(5*wuerfel)+spiel, wuerfel+spiel, hoehe]);
        }
        
        // Würfelreihe 2
        translate([2*rand_x+bonusplaettchen_x+spiel,2*rand_y+wuerfel+spiel,bodendicke]){
            cube([(5*wuerfel)+spiel, wuerfel+spiel, hoehe]);
        }
        
        // Bonusplättchen
        translate([rand_x,rand_y_2,bodendicke]){
            cube([bonusplaettchen_x+spiel, bonusplaettchen+spiel, hoehe]);
        }
        
        translate([rand_x+radius_bonus,rand_y_2,bodendicke+radius_bonus]){
            union(){
                intersection(){        
                    sphere(radius_bonus);
                    translate([-radius_bonus,-radius_bonus,-radius_bonus]){
                        cube([radius_bonus*2,radius_bonus,radius_bonus]);
                    }
                }
                linear_extrude(radius_bonus){
                    circle(radius_bonus);
                }
            }
        }
        
        translate([rand_x+radius_bonus,rand_y_2+bonusplaettchen+spiel,bodendicke+radius_bonus]){
            union(){
                intersection(){        
                    sphere(radius_bonus);
                    translate([-radius_bonus,0,-radius_bonus]){
                        cube([radius_bonus*2,radius_bonus,radius_bonus]);
                    }
                }
                linear_extrude(radius_bonus){
                    circle(radius_bonus);
                }
            }
        }
    }
} else {
    radius_bonus = (bonusplaettchen_x+spiel)/2;
    //radius_wuerfel = (wuerfel+spiel)/2;
    //rand_x = (x-5*wuerfel-2*spiel-bonusplaettchen_x-2*radius_wuerfel)/3;
    difference(){
        cube([x,y,hoehe+bodendicke]);
        
        // Würfelreihe 1
        translate([2*rand_x+bonusplaettchen_x+spiel,rand_y,bodendicke]){
            cube([(5*wuerfel)+spiel, wuerfel+spiel, hoehe]);
        }
        
        // Würfelreihe 2
        translate([2*rand_x+bonusplaettchen_x+spiel,2*rand_y+wuerfel+spiel,bodendicke]){
            cube([(5*wuerfel)+spiel, wuerfel+spiel, hoehe]);
        }
        
        // Bonusplättchen
        translate([rand_x,rand_y_2,bodendicke]){
            cube([bonusplaettchen_x+spiel, bonusplaettchen+spiel, hoehe]);
        }
        
        // Greifer unten für Bonusplättchen
        translate([rand_x+radius_bonus,rand_y_2,bodendicke+radius_bonus]){
            union(){
                intersection(){        
                    sphere(radius_bonus);
                    translate([-radius_bonus,-radius_bonus,-radius_bonus]){
                        cube([radius_bonus*2,radius_bonus,radius_bonus]);
                    }
                }
                linear_extrude(radius_bonus){
                    circle(radius_bonus);
                }
            }
        }
        
        // Greifer oben für Bonusplättchen
        translate([rand_x+radius_bonus,rand_y_2+bonusplaettchen+spiel,bodendicke+radius_bonus]){
            union(){
                intersection(){        
                    sphere(radius_bonus);
                    translate([-radius_bonus,0,-radius_bonus]){
                        cube([radius_bonus*2,radius_bonus,radius_bonus]);
                    }
                }
                linear_extrude(radius_bonus){
                    circle(radius_bonus);
                }
            }
        }
        
        // Greifer für Würfel
        translate([2*rand_x+bonusplaettchen_x+spiel+(5*wuerfel+spiel)/2,rand_y+wuerfel+spiel,radius_bonus+bodendicke]){
            union(){
                translate([0,rand_y,0]){
                    rotate([90,0,0]){
                        linear_extrude(rand_y){
                            circle(radius_bonus);
                        }
                    }
                }
                translate([-radius_bonus,0,0]){
                    cube([2*radius_bonus, rand_y, radius_bonus]);
                }
            }
        }
    }
}