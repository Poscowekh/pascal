var 
    s,c:string;

function f(s,c: string): integer;
var 
    i,k,a,n,v,d: integer;
    b: array of integer;
label l1, l2;
    
begin
    v:=0;
    setlength(b,length(c)-1);
    l2:
    if length(c)=0 
    then 
        goto l1;
    for i:=1 to length(c) do
        for k:=1 to length(s) do
            begin
            if c[i]=s[k] 
            then
                if k=length(s)
                then
                    begin 
                    a:=a+1;
                    delete(c,1,k);
                    if v<>0
                    then
                        v:=v+k;
                    b[d]:=i+v+1;
                    d:=d+1;
                    goto l2;
                    end
           else 
                begin
                delete(c,1,1);
                v:=v+1;
                goto l2;
                end;
           end;
    l1:
    for n:=0 to d do
        write(b[n],' ');
    writeln;
    f:=a;
end;
    
begin
    readln(c);
    readln(s);
    writeln(f(s,c));
end.