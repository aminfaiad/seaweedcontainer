module ultrasonic(){
union(){
cube([45,1.6,20]);

translate([8+1.4,1.6,10])
rotate([-90,0,0])
cylinder(12,9,9);

translate([37-1.4,1.6,10])
rotate([-90,0,0])
cylinder(12,9,9);}
}


module ph(){
union(){
cube([32,42,1]);
translate([8,0,0])
cube([10,10,10]);

translate([13,0,8])
rotate([90,0,0])
cylinder(20,7,7);}}

module raspiscrew(){
translate([3.5,3.5,0])
cylinder(30,d=2.8,$fn=20);
translate([65-3.5,3.5,0])
cylinder(30,d=2.8,$fn=20);
translate([3.5,30-3.5,0])
cylinder(30,d=2.8,$fn=20);
translate([65-3.5,30-3.5,0])
cylinder(30,d=2.8,$fn=20);
}

module phscrews(){
translate([3,3,0])
cylinder(30,d=4.5,$fn=20);
translate([42-3,3,0])
cylinder(30,d=4.5,$fn=20);
translate([3,32-3,0])
cylinder(30,d=4.5,$fn=20);
translate([42-3,32-3,0])
cylinder(30,d=4.5,$fn=20);
}

module adcscrew(){
translate([3.25,3.25])
cylinder(30,d=4,$fn=20);
translate([48-3.25,3.25])
cylinder(30,d=4,$fn=20);
translate([3.25,25-3.25])
cylinder(30,d=4,$fn=20);
translate([48-3.25,25-3.25])
cylinder(30,d=4,$fn=20);}
/*
difference(){
cube([100,50,20]);
    translate([1,1,1])
cube([98,48,20]);
}
*/

module hollow(size=[10,10,10],thickness = 1){
    
   difference(){
cube([size[0],size[1],size[2]]);
    translate([thickness,thickness,thickness])
cube([size[0]-thickness * 2,size[1]-thickness * 2,size[2]]);
} 
    
}

module box(){
difference(){
hollow(size= [200-50,130,50],thickness = 1.2);

translate([-2,1.2,48.8-2])
cube([50,127.6,4]);}

translate([0,1.2,48.8-2.6])
difference(){
cube([150,127.6,1.2]);
    translate([1.2,3.6,0])
    cube([150 - 2.4,127.6-7.2,1.2]);
    
    }
    
    
translate([0,1.2,48.8-2.4+2.4])
difference(){
cube([150,127.6,1.2]);
    translate([1.2,3.6,0])
    cube([150 - 2.4,127.6-7.2,1.2]);
    translate([0,3.6,0])
    cube([1.2,127.6-7.2,1.2]);
    }
    
};

//translate([37,30,1])
//rotate([0,0,90])
//color("red")
//hollow(size= [65,35,10]); //raspberry pi

//color("orange")
//translate([100,10,1])
//rotate([0,0,90])
//hollow(size= [85,55,10]); //breadboard

//color("blue")
//translate([50,100,1])
//rotate([0,0,0])
//hollow(size= [45,25,10]);  //ADC


//color("grey")
//translate([1,110,1])
//rotate([0,0,0])
//hollow(size= [40,15,10]);  //Light module



//color("pink")
//translate([145,95,1.2])
//rotate([0,0,-90])
//ultrasonic();  //Ultrasonic

//color("green")
//rotate([0,0,90])
//translate([5,-148,1.2])
//ph();


//cube([42,32,2]);


difference(){
difference(){

    difference(){

    box();
        translate([-20,65-35,1.2])
    cube([45,65,10]);
    }
color("pink")
translate([145,95,1.2])
rotate([0,0,-90])
ultrasonic();  //Ultrasonic
}
color("green")
rotate([0,0,90])
translate([5,-148,1.2])
ph();


rotate([0,0,90])
translate([30,-35,0])
raspiscrew();
translate([23,115,0])
cylinder(h=30,d=3.5,$fn=20);

translate([10,115,3.7])
cube([30,15,5],center=true);

translate([106,5,-.7])
phscrews();


translate([146,120,1.3])
cube([5,5,5]);
translate([146,113,1.3])
cube([5,5,5]);


translate([50,100,0])
adcscrew();
}

//color("red")
//translate([2.4,2.4,0])
 //   cube([10 - 2.4-2.4,127.6-2.4-2.4,1.2]);
//translate([0,1.2,50])
//cube([150-1.2,130-2.4,1]); 