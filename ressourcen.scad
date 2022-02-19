x = 135;
y = 85; // 128 / 2
bodendicke = 1;
abrundung = 10;
hoehe = 32;
$fn = 100;

difference(){
    cube([x,y,hoehe+bodendicke]);
    
    translate([abrundung+bodendicke,abrundung+bodendicke,abrundung+bodendicke]){
        intersection(){
            minkowski(){
                cube([(x-6*bodendicke)/5-2*abrundung,y-2*bodendicke-2*abrundung,hoehe+bodendicke]);
                sphere(abrundung);
            }
            translate([-abrundung, -abrundung, -abrundung]){
                cube([(x/5)+abrundung,y+abrundung,hoehe+bodendicke+abrundung]);
            }
        }
    }
    
    translate([abrundung+2*bodendicke+(x-6*bodendicke)/5,abrundung+bodendicke,abrundung+bodendicke]){
        intersection(){
            minkowski(){
                cube([(x-6*bodendicke)/5-2*abrundung,y-2*bodendicke-2*abrundung,hoehe+bodendicke]);
                sphere(abrundung);
            }
            translate([-abrundung, -abrundung, -abrundung]){
                cube([(x/5)+abrundung,y+abrundung,hoehe+bodendicke+abrundung]);
            }
        }
    }
    
    translate([abrundung+3*bodendicke+2*(x-6*bodendicke)/5,abrundung+bodendicke,abrundung+bodendicke]){
        intersection(){
            minkowski(){
                cube([(x-6*bodendicke)/5-2*abrundung,y-2*bodendicke-2*abrundung,hoehe+bodendicke]);
                sphere(abrundung);
            }
            translate([-abrundung, -abrundung, -abrundung]){
                cube([(x/5)+abrundung,y+abrundung,hoehe+bodendicke+abrundung]);
            }
        }
    }
    
    translate([abrundung+4*bodendicke+3*(x-6*bodendicke)/5,abrundung+bodendicke,abrundung+bodendicke]){
        intersection(){
            minkowski(){
                cube([(x-6*bodendicke)/5-2*abrundung,y-2*bodendicke-2*abrundung,hoehe+bodendicke]);
                sphere(abrundung);
            }
            translate([-abrundung, -abrundung, -abrundung]){
                cube([(x/5)+abrundung,y+abrundung,hoehe+bodendicke+abrundung]);
            }
        }
    }
    
    translate([abrundung+5*bodendicke+4*(x-6*bodendicke)/5,abrundung+bodendicke,abrundung+bodendicke]){
        intersection(){
            minkowski(){
                cube([(x-6*bodendicke)/5-2*abrundung,y-2*bodendicke-2*abrundung,hoehe+bodendicke]);
                sphere(abrundung);
            }
            translate([-abrundung, -abrundung, -abrundung]){
                cube([(x/5)+abrundung,y+abrundung,hoehe+bodendicke+abrundung]);
            }
        }
    }
}