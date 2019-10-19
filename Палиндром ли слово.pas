var 
    s: string;
    k: integer;

procedure f(s: string); 
var 
    i,l: integer; 
begin
    l:=Length(s);
    for i:=1 to (abs(l div 2)) do
          if s[i]<>s[l-i+1] 
          then
              begin
              writeln('Not palindrome');
              exit;
              end;
    writeln('Palindrome');
end;

begin
    repeat
        readln(s);
        f(s);
        writeln('To stop enter 0');
        writeln('To continue enter anything else');
        readln(k);
    until k=0;
end.