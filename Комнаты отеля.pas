
var 
    s: string;
    i,k,l,j: integer;
    a: array[0..9] of integer := (0,0,0,0,0,0,0,0,0,0);
    
begin
    writeln('Enter data:');
    readln(s);
    l:=Length(s);
    for i:=1 to l do
        begin
        if s[i]='L'
            then
                for k:=0 to 9 do
                    if a[k]=0
                        then
                            begin
                            a[k]:=1;
                            break;
                            end;
        if s[i]='R'
            then
                for k:=9 downto 0 do
                    if a[k]=0
                        then
                            begin
                            a[k]:=1;
                            break;
                            end;
        if ('0'<=s[i]) and (s[i]<='9')
            then
                begin
                j:=OrdAnsi(s[i])-48;
                a[j]:=0;
                end;
        end;
    writeln('Rooms:');
    for i:=0 to 9 do
        write(a[i]);
  
end.