$fn = 100;
diametro_foro = 6.10;
altezza_foro = 16;

diametro_manopola = 22;
altezza_manopola = 22;

diametro_smusso = 17;
altezza_smusso = 8.5;

difference(){
difference(){
    cylinder(altezza_manopola,diametro_manopola/2,diametro_manopola/2.5);
    cylinder(altezza_foro,diametro_foro/2,diametro_foro/2);
}

    cylinder(altezza_smusso,diametro_smusso/2,diametro_smusso/2);
}