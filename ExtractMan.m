function [man] = ExtractMan(image1)
[h, w, ~] = size(image1);  
for i=1:h
  for j=1:w
    Red=image1(i,j,1);
    Green=image1(i,j,2);
    Blue=image1(i,j,3);
    if Blue>=90 && (Blue-Green >40 ||Blue-Red>30)
     image1(i,j,1)=0;
     image1(i,j,2)=0;
     image1(i,j,3)=0;
    
  elseif (180<Blue) && (180<Green ) && (180<Red)
     image1(i,j,1)=0;
     image1(i,j,2)=0;
     image1(i,j,3)=0;
     endif
  endfor
endfor
man=image1;
end