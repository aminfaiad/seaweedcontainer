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

translate([-0,1.2,48.8-2.4])
difference(){
cube([150,127.6,1.2]);
    translate([1.2,1.2,0])
    cube([150 - 2.4,127.6-2.4,1.2]);
    
    }
    
    
translate([-0,1.2,48.8-2.4+2.4])
difference(){
cube([150,127.6,1.2]);
    translate([1.2,1.2,0])
    cube([150 - 2.4,127.6-2.4,1.2]);
    translate([0,1.2,0])
    cube([10 - 2.4,127.6-2.4,1.2]);
    }
    
};
    translate([0,1.2,50])
cube([150-1.2,130-2.4,1]);  //LID