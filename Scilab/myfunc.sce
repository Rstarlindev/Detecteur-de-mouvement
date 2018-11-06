global x1
global y1
global tt 
x1=1;
y1 =1;
tt = 0;
function [x,y,t]=myfct(a,b)
    aa= a;
    bb=b;
    ims = imsubtract(bb,aa);
   // ims = im2bw(imss,0.5); 
    ims1 = imresize(ims,[300,300])
    [c,l]= size(ims1);
    
for i= 1:c
    for j = 1:l
        if ims1(i,j) ~= 0 
       
        y1 = j;
        break;
        end
    end
    if ims1(i,j) ~= 0
        x1 = i; 
        
        break;
    end
end
    
for i= 1:c
    for j = 1:l
        if ims1(i,j) ~= 0 
        tt = tt+1;
        end
    end
end
disp("t = "+string(tt));
disp("y1 = "+string(y1));
disp( "x1 = "+string(x1));
imshow(ims1);
    x = x1;
    y=y1;
    t=tt;
endfunction
