  A = randi(255,1,100);
   B = dec2hex(A); 
    
    
fid = fopen('ROM.txt','wt');


for i=1:100
    
    fprintf(fid,'%s%s%d%s = %s%X%s\n','ROM','[',i,']','8''h',A(i),';');
    
end
    
fclose(fid);