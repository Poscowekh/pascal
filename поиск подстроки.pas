var 
    s,c:string;

function f(s,c: string): boolean;
var 
    i,k: integer;
    b: boolean;
label l1, l2;
    
begin
    l2:
    for i:=1 to length(c) do
        for k:=1 to length(s) do
            begin
            if c[i]=s[k] 
            then
                begin
                b:=true;
                if k=length(s)
                then
                    if b= true
                    then 
                        goto l1;
                end
           else 
                begin
                delete(c,1,1);
                goto l2;
                end;
           break;
           end;
    l1:
    f:=b;
end;
    
begin
    readln(c);
    readln(s);
    writeln(f(s,c));
end.