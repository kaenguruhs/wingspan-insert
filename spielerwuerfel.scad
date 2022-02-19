// Karten: 87mm x 57mm -> 89x59
// Automa: 10mm hoch -> 13mm
// Bonuskarten: 13mm -> 15mm
// Vogelkarten: 30mm hoch -> 32mm
// Rahmen: 1mm

// Wertungsblock: 112x81mm
// Spielerwuerfel: 8mm
// Wuerfel: 21mm

hoehe = 7;
bodendicke = 1;
x = 112;
y = 81;
$fn = 100;

spielerwuerfel = 8;
spiel = 2.5;

greifer = true;
radius = (2*spielerwuerfel+spiel)/2;
rand_2 = (x-(3*2*spielerwuerfel)-(3*spiel)) / 4;


if(greifer){
    rand_1 = (x-(2*4*spielerwuerfel)-(2*spiel)-4*radius) / 3;
    rand_y = (y-(6*spielerwuerfel)-(2*spiel)-2*radius) / 3;
    
    difference(){
        // Basis
        cube([x,y,hoehe+bodendicke]);
        
        // Würfel 1
        translate([rand_1+radius,rand_y,bodendicke]){
            cube([(4*spielerwuerfel)+spiel,(2*spielerwuerfel)+spiel,hoehe]);
        }
        translate([rand_1+radius,rand_y+radius,radius+bodendicke]){
            sphere(radius);
        }
        translate([rand_1+radius+4*spielerwuerfel+spiel,rand_y+radius,radius+bodendicke]){
            sphere(radius);
        }
        
        // Würfel 2
        translate([2*rand_1+3*radius+4*spielerwuerfel+spiel,rand_y,bodendicke]){
            cube([(4*spielerwuerfel)+spiel,(2*spielerwuerfel)+spiel,hoehe]);
        }
        translate([2*rand_1+3*radius+4*spielerwuerfel+spiel,rand_y+radius,radius+bodendicke]){
            sphere(radius);
        }
        translate([2*rand_1+3*radius+8*spielerwuerfel+2*spiel,rand_y+radius, radius+bodendicke]){
            sphere(radius);
        }
        
        
        // Würfel 3
        translate([rand_2,2*rand_y+2*spielerwuerfel+spiel+radius,bodendicke]){
            cube([(2*spielerwuerfel)+spiel,(4*spielerwuerfel)+spiel,hoehe]);
        }
        
        translate([rand_2+radius,2*rand_y+2*spielerwuerfel+spiel+radius,radius+bodendicke]){
            sphere(radius);
        }
        translate([rand_2+radius,2*rand_y+6*spielerwuerfel+2*spiel+radius, radius+bodendicke]){
            sphere(radius);
        }
        
        
        // Würfel 4
        translate([2*rand_2+2*spielerwuerfel+spiel,2*rand_y+2*spielerwuerfel+spiel+radius,bodendicke]){
            cube([(2*spielerwuerfel)+spiel,(4*spielerwuerfel)+spiel,hoehe]);
        }
        
        translate([2*rand_2+2*spielerwuerfel+spiel+radius,2*rand_y+2*spielerwuerfel+spiel+radius,radius+bodendicke]){
            sphere(radius);
        }
        translate([2*rand_2+2*spielerwuerfel+spiel+radius,2*rand_y+6*spielerwuerfel+2*spiel+radius, radius+bodendicke]){
            sphere(radius);
        }
        
        // Würfel 5
        translate([3*rand_2+4*spielerwuerfel+2*spiel,2*rand_y+2*spielerwuerfel+spiel+radius,bodendicke]){
            cube([(2*spielerwuerfel)+spiel,(4*spielerwuerfel)+spiel,hoehe]);
        }
        
        translate([3*rand_2+4*spielerwuerfel+2*spiel+radius,2*rand_y+2*spielerwuerfel+spiel+radius,radius+bodendicke]){
            sphere(radius);
        }
        translate([3*rand_2+4*spielerwuerfel+2*spiel+radius,2*rand_y+6*spielerwuerfel+2*spiel+radius, radius+bodendicke]){
            sphere(radius);
        }
    }
} else {
    rand_1 = (x-(2*4*spielerwuerfel)-(2*spiel)) / 3;
    rand_y = (y-(6*spielerwuerfel)-(2*spiel)) / 3;
    
    difference(){
        // Würfel 1
        cube([x,y,hoehe+bodendicke]);
        translate([rand_1,rand_y,bodendicke]){
            cube([(4*spielerwuerfel)+spiel,(2*spielerwuerfel)+spiel,hoehe]);
        }
        
        // Würfel 2
        translate([2*rand_1+4*spielerwuerfel+spiel,rand_y,bodendicke]){
            cube([(4*spielerwuerfel)+spiel,(2*spielerwuerfel)+spiel,hoehe]);
        }
        
        // Würfel 3
        translate([rand_2,2*rand_y+2*spielerwuerfel+spiel,bodendicke]){
            cube([(2*spielerwuerfel)+spiel,(4*spielerwuerfel)+spiel,hoehe]);
        }
        
        // Würfel 4
        translate([2*rand_2+(2*spielerwuerfel)+spiel,2*rand_y+2*spielerwuerfel+spiel,bodendicke]){
            cube([(2*spielerwuerfel)+spiel,(4*spielerwuerfel)+spiel,hoehe]);
        }
        
        // Würfel 5
        translate([3*rand_2+(2*2*spielerwuerfel)+2*spiel,2*rand_y+2*spielerwuerfel+spiel,bodendicke]){
            cube([(2*spielerwuerfel)+spiel,(4*spielerwuerfel)+spiel,hoehe]);
        }
    }
}