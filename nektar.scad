x = 135;
y = 42; // 128 / 2
bodendicke = 1;
abrundung = 10;
hoehe = 32;
$fn = 100;

difference(){
    cube([x,y,hoehe+bodendicke]);
    
    translate([abrundung+bodendicke,abrundung+bodendicke,abrundung+bodendicke]){
        intersection(){
            minkowski(){
                cube([(x-bodendicke)-2*abrundung,y-2*bodendicke-2*abrundung,hoehe+bodendicke]);
                sphere(abrundung);
            }
            translate([-abrundung, -abrundung, -abrundung]){
                cube([(x)+abrundung,y+abrundung,hoehe+bodendicke+abrundung]);
            }
        }
    }
    
}