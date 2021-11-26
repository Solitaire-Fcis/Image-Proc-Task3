function [out] = AddMan(image2,man)
  man=ExtractMan(man);
  out=man;
  [h,w,~]=size(man);
  for i=1:h
    for j=1:w
      if man(i,j,1)==0 && man(i,j,2)==0 && man(i,j,3)==0
        out(i,j,1)=image2(i,j,1);
        out(i,j,2)=image2(i,j,2);
        out(i,j,3)=image2(i,j,3);
      endif
    endfor
  endfor
imshow(out);
end