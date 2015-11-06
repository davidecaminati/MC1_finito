$fn = 100;
altezza_cubo = 12;

difference(){
    cube([14,14,altezza_cubo],center = true);
    cylinder(altezza_cubo,12/2,12/2,center = true);

}

for (i = [-8,8]){
    translate ([0,i,-(altezza_cubo/2)+2]){
        difference(){
        cylinder(4,4.5/2,4.5/2,center = true);
        cylinder(4,1.5/2,1.5/2,center = true);
            
        }
    }
    }
