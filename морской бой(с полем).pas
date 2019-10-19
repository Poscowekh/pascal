var 
    i,k,n,l,count: integer;
    w1,w2,l1,l2: integer;
    a: array[,] of integer;
  


begin  
    writeln('Enter length and width of smaller ship');
    readln(w1,l1);
    writeln('Enter length and width of bigger ship');
    readln(w2,l2);  
    l:=l1+l2;       
    n:=Max(Max(w1,w2),Max(l1,l2))+4;
    setlength(a,n,n);
    for i:=0 to n-1 do
        for k:=0 to n-1 do
            a[i,k]:=0;
    for i:=0 to n-1 do             //shows the generated field 
        for k:=0 to n-1 do
            begin
            write(a[i,k]);
            if k<n-1 then write(' ');
            if k=n-1 
            then 
                writeln;
            end;
    writeln;
    for i:=1 to l1 do             
        for k:=1 to w1 do
            a[i,k]:=1;
    for i:=l-l2+1 to l do
        for k:=1 to w2 do
            a[i,k]:=1;           
    for i:=0 to n-1 do            //shows the field after placing the ships     
        for k:=0 to n-1 do
            begin
            write(a[i,k]);
            if k<n-1 then write(' ');
            if k=n-1 
            then 
                writeln;
            end;
    writeln;
    for i:=0 to l1+1 do
        for k:=0 to w1+1 do
            if a[i,k]<>1 then
                a[i,k]:=2;
    for i:=l-l2 to l+1 do
        for k:=0 to w2+1 do
            if a[i,k]<>1 then
                a[i,k]:=2;   
    for i:=0 to n-1 do            //shows the field after marking the zone     
        for k:=0 to n-1 do
            begin
            write(a[i,k]);
            if k<n-1 then write(' ');
            if k=n-1 
            then 
                writeln;
            end;
    writeln;
    for i:=0 to l+1 do
        for k:=0 to l+1 do
            if a[i,k]=2 then
                count:=count+1;
    writeln('Zones marked: ',count);                  
end.