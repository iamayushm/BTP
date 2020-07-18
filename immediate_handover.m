clc;
close all;
clear all;

a=zeros(1,1000000);
xl1=-2.5;
yl1=0;

xl2=2.5;
yl2=0;

x=0;
y=0;
l=1000000;
r=randi([-1,1],l,1);
theta=2*pi*rand(l,1);
k=[r,theta];
m=zeros(l,4);

for i=1:l
    x=x+k(i,1)*cos(k(i,2));
    y=y+k(i,1)*sin(k(i,2));
    
    if(x<-5)
        x=-5;
    end
    if(x>5)
        x=5;
    end
    if(y<-5)
        y=-5;
    end
    if(y>5)
        y=5;
    end
        d1=sqrt((xl1-x^2)+(yl1-y^2)+1);
        d2=sqrt((xl2-x^2)+(yl2-y^2)+1);
        
        if(d1>=d2)
            a(i)=1;
        else
            a(i)=2;
        end
    
m(i,1)=x;
m(i,2)=y;
m(i,3)=a(i);
end
b=zeros(1,length(a));
m(1,4)=0;
for i=2:length(a)
    if(a(i)~=a(i-1))
        b(i)=1;
    end
    m(i,4)=b(i);
end





        
   




    
    