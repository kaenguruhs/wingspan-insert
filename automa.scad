// Karten: 87mm x 57mm -> 89x59
// Automa: 10mm hoch -> 13mm
// Bonuskarten: 13mm -> 15mm
// Vogelkarten: 30mm hoch -> 32mm
// Rahmen: 1mm

// Wertungsblock: 112x81mm

hoehe = 13;
$fn = 100;

difference(){
    cube([91,61,hoehe+1]);
    translate([1,1,1]){
        cube([89,59,hoehe]);
    }
    translate([0,61/2,0]){
        linear_extrude(1){
            circle(20);
        }
    }
    #translate([0,19/2,0]){
        cube([1,40,hoehe+1]);
    }
}